class TextInspectionController < ApplicationController
	def new
		render 'new'
	end

	def create
		@text = params[:text_inspection] [:user_text]

		@word_count = @text.split(" ").length
		@words = @text.split(" ")

		@result = (@word_count * 60)/275.to_f

		@frequency = Hash.new(0)
		@words.each do |word|
		@frequency[word] += 1

		end

		render 'results'
	end
end
