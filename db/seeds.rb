@user = User.create(email: "test@test.com", 
					password: "asdfasdf", 
					password_confirmation: "asdfasdf", 
					first_name:"Jon", 
					last_name: "Snow",
					phone: "9902825673")

puts "1 user created"

AdminUser.create(email: "admin@test.com", 
				 password: "asdfasdf", 
				 password_confirmation: "asdfasdf", 
				 first_name:"Admin", 
				 last_name: "Name",
				 phone: "9902825673")

100.times do |post|
	Post.create(date: Date.today, rationale: "#{post} ratinale content", user: @user, overtime_request: 2.5)
end

puts "A 100  posts has been created."

100.times do |post|
	AuditLog.create(user_id: User.last.id, status: 0, start_date: (Date.today - 6.days))
end

puts "A 100  Audit Logs has been created."