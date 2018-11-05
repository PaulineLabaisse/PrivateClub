class RegisterController < ApplicationController
	
	def new
		@user = User.new
	end

	def create
		@user = User.new
        @user.last_name = params["last_name"]
        @user.first_name = params["first_name"]
        @user.email = params["email"]
        @user.password_digest = params['password_digest']
      
      if @user.save
      	log_in @user
      	flash[:info] = "Tu es bien logué fdp"
      	redirect_to @user

      else
      	render 'new'
      end
	end
end
