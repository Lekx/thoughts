class ThoughtsController < ApplicationController
	def index
		@thoughts = Thought.all
	end

	def show
		#raise params.inspect
		@thought = Thought.find(params[:id])
	end

	def new
		@thought = Thought.new
	end

	def edit
		@thought = Thought.find(params[:id])
	
	end

	def create
		@thought = Thought.new(params[:thought])
		
		if @thought.save
			redirect_to @thought
		else
			render :new
		end
	end

	def update
		@thought = Thought.find(params[:id])
		
		if @thought.update(params[:thought])
			redirect_to @thought
		else
			render :edit
		end
	end

	def destroy
		
	end
end
