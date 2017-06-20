100.times do |post|
	Post.create(date: Date.today, rationale: "#{post} ratinale content")
	puts "A 100  posts has been created."
end