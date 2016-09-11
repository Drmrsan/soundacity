class CategoriesController < ApplicationController
	def new
		@category = Category.new
	end

	def create
			@category = Category.create(category_params)
			if @category.save
				flash[:success] = "Category successfully created!"
				redirect_to categories_path
			else
				render 'new'
		end

	end

	def show
		
	end
	
	def destroy
		
	end

	private

		def category_params
			params.require(:category).permit(:name)
		end
end
