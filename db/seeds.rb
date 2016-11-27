100.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} rationale content here")
end

puts "#{Post.count} Posts has been created"
