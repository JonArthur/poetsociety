class PoemsController < ApplicationController
	def index	
	end

	def new
		@poem = Poem.new
		if @poem.save
			redirect_to root_path
		else
			render 'new'
			
	end

	def create
		@poem = Poem.new(poem_params)
	end

	private
		def poem_params
			params.require(:poem).permit(:title,:body,:author)
			
		end
end
