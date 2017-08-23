class PoemsController < ApplicationController
	before_action :find_poem, only:[:show,:edit,:update,:destroy]
	def index	
		@poems = Poem.all
	end

	def show
	end

	def edit	
	end

	def update
		if @poem.update(poem_params)
			redirect_to poem_path(@poem)
		else
			render 'edit'
		end
	end

	def new
		@poem = Poem.new
	end

	def create
		@poem = Poem.new(poem_params)
		if @poem.save
			redirect_to root_path
		else
			render 'new'
		end	
	end

	def destroy
		@poem.destroy
		redirect_to root_path
	end


	private
		def poem_params
			params.require(:poem).permit(:title,:body,:author)
			
		end

		def find_poem
			@poem = Poem.find(params[:id])	
		end
end
