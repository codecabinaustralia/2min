class QuoteMailer < ApplicationMailer

	def free_quote(quote, user)
		@quote = quote
		@user = user

		mail to: @user.email, 
			 subject: "Yay! You have a new message from your website.",
			 reply_to: @quote.email,
			 from: @quote.email
	   end
end
