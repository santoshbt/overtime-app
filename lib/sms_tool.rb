module SmsTool
	account_sid = ENV['TWILIO_ACCOUNT_SID']
	auth_token = ENV['TWILIO_AUTH_TOKEN']

	@client = Twilio::REST::Client.new account_sid, auth_token

	def self.send_sms(number: num, message: msg)
		@client.messages.create(
			from: ENV['TWILIO_PHONE_NUMBER'],	
			to: "#{number}",
			body: "#{message}"
		)
	end
end

SmsTool.send_sms(number: '+919902825673', message: "Testing the message sending")