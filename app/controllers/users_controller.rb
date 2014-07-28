class UsersController < ApplicationController
	before_action :require_admin
	
	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)

		if @user.save
			flash[:notice] = "User created"
			redirect_to listings_path
		else
			flash[:error] = "There were some problems"
			render 'new'
		end
	end

	private

	def user_params
		params.require(:user).permit(:username, :password, :password_confirmation)
	end
end