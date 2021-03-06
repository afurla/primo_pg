class SessionsController < ApplicationController

	def new
	end

	def create
		user = User.find_by_email(params[:session][:email].downcase)
		if user && user.authenticate(params[:session][:password])
			sign_in user
			redirect_to user
				#sign the user and redirect to the user's show page
		else
			flash.now[:error] = 'Invalid e-mail password combination'
			render 'new'
			#create an error message and re-render the signing for m 
		end
	end

	def destroy
		sign_out
		redirect_to root_url
	end 

end
