class MessageMailer < ApplicationMailer
	def free_quote(message, user)
		@message = message
		@user = user

	    mail(
	    recipients: user.email,
	    reply_to: message.email,
	    from: message.email,
	    subject: "Yay! You have a new message from your website.")
	   end
end
