user1 = User.create(email:'test@test.com', password:'password', password_confirmation: 'password', first_name: 'John', last_name: 'Snow')

puts "#{User.count} Users created"

100.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} rationale content here", user_id: user1.id)
end

puts "#{Post.count} Posts has been created"
