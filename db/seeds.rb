@user = User.create(email: "test@test.com", password: "asdfasdf", password_confirmation: "asdfasdf", first_name:"Jon", last_name: "Snow")

puts "1 user created"

AdminUser.create(email: "admin@test.com", password: "asdfasdf", password_confirmation: "asdfasdf", first_name:"Admin", last_name: "Name")

100.times do |post|
	Post.create(date: Date.today, rationale: "#{post} ratinale content", user: @user, overtime_request: 2.5)
end
puts "A 100  posts has been created."