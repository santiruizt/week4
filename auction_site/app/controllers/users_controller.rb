class UsersController < ApplicationController

	def index
		@users = User.all
	end

	def show
		@user = User.find_by(id: params[:id])
		@products = @user.products
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(
		:name => params[:user][:name],
		:email => params[:user][:email])
		
		if @user.save
			redirect_to '/users/'
		else
			render "error"
		end	
	end

	def destroy
    	User.find(params[:id]).destroy
		redirect_to "/users"
  	end

end

