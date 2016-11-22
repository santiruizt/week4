class ProductsController < ApplicationController

	def index
		@products = Product.all
	end

	def show
		@product = Product.find(params[:id])

	end

	def new
		@user = User.find(params[:user_id])
		@products = @user.products.new
	end

	def create
		@product = @user.products.new(product_params)
		if @product.save
			redirect_to user_product_path(@user.id)
		else
			render "new"
		end	

	end

	def destroy
		Product.find(params[:id]).destroy
		redirect_to user
	end



end
