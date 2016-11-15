class AsciisController < ApplicationController
	def new
		render 'new'
	end

	def create
		@ascii_text = params[:ascii_conversion] [:user_text]
		a = Artii::Base.new :font => 'slant'
		@ascii_conversion = a.asciify(@ascii_text)
		render 'create'
	end
end
