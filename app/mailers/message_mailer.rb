class MessageMailer < ApplicationMailer
	def free_quote(message, user)
		@message = message
		@user = user

		mail to: @user.email, 
			 subject: "Yay! You have a new message from your website.",
			 reply_to: @message.email,
			 from: @message.email
	   end
end
