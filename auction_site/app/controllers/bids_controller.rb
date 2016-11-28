class BidsController < ApplicationController

  def create
    user = User.find_by(email: params[:email])
    @product = Product.find_by(params[:product_id])
    @bids = @product.bids
    @my_bid = Bid.new(amount: params[:amount], product_id: params[:product_id])


    if condition

    end
  end
end
