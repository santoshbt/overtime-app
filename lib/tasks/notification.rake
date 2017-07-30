namespace :notification do
  desc "sends sms notification to employees asking the to log if they had overtime or not"
  task sms: :environment do
  	# 1. Schedule to run at Sundat at 5 PM
  	# 2. Iterate over all employees
  	# 3. We want to skip admin users
  	# 4. Send a message that has a link and log time

  	# User.all.each do |user|
  	# 	SmsTool.send_sms()
  	# end

  	# No spaces or dashes
  	# exactly 10characters
  	# all characters have to be number
  end

end
