class PoemsController < ApplicationController
	before_action :find_poem, only:[:show,:edit,:update,:destroy]
	before_action :authenticate_user!, except:[:index,:show]
	def index
		if params[:category].blank?	
			@poems = Poem.all
		
		else
			@category_id = Category.find_by(name: params[:category]).id
			@poems = Poem.where(category_id: @category_id) 
		end
		if params[:search]
			@poems = Poem.where('title LIKE ?', "%#{params[:search]}%")
		end
	end

	def show
		@poems = Poem.new
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
		@poem = current_user.poems.build
	end

	def create
		@poem = current_user.poems.build(poem_params)
		
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
	def upvote 
  		@poem = Poem.find(params[:id])
  		@poem.upvote_by current_user
  		redirect_back fallback_location: poem_path(@poem)
	end  

	def downvote
  		@poem = Poem.find(params[:id])
  		@poem.downvote_by current_user
  		redirect_back fallback_location: poem_path(@poem)
  		
	end



	private
		def poem_params
			params.require(:poem).permit(:title,:body,:category_id,:search)
			
		end

		def find_poem
			@poem = Poem.find(params[:id])	
		end
end
