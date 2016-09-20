class CategoriesController < ApplicationController
	
	def index
		@categories = Category.all
		@category = Category.new
	end

	def create
			@category = Category.create(category_params)
			if @category.save
				flash[:success] = "Category successfully created!"
				redirect_to :back
			else
				redirect_to :back
		end

	end

	def show
		@category = Category.find(params[:id])
	end
	
	def destroy
		
	end

	private

		def category_params
			params.require(:category).permit(:name)
		end
end
