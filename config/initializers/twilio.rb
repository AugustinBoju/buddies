Twilio.configure do |config|
  config.account_sid = ENV["twilio_sid"]
  config.auth_token = ENV["twilio_token"]
end


@client.messages.create(from: ENV['twilio_number'], to: '+33650858793', body: 'Apo arrête de faire la gueule!')
