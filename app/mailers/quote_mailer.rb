class QuoteMailer < ApplicationMailer

	def free_quote(quote,user)
		@quote = quote
		@user = user
		mail(
		  :subject => 'Yay! You have a new message from your website.',
		  :to  => @user.email,
		  :from => @quote.email,
		)

	  end
end
