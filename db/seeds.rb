user1 = User.create(email:'test@test.com', password:'password', password_confirmation: 'password', first_name: 'John', last_name: 'Snow')

puts "#{User.count} Users created"

AdminUser.create(email:'admin@test.com', password:'password', password_confirmation: 'password', first_name: 'Admin', last_name: 'Master')

puts "#{AdminUser.count} AdminUsers created"

100.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} rationale content here", user_id: user1.id, overtime_request: 2.5)
end

puts "#{Post.count} Posts has been created"
