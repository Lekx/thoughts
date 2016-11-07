class CategoriesController < ApplicationController

	before_action :authenticate_user!
	
	def index
		@categories = Category.all
	end

	def show
		#raise params.inspect
		@category = Category.find(params[:id])
	end

	def new
		@dummy = "dummy data"
	end

end
