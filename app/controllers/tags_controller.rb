class TagsController < ApplicationController
	
	def show
  	@tag = Tag.find(params[:id])
	end

	def index
  	@tag = Tag.all
	end

	def destroy
  	Tag.destroy(params[:id])

  	flash.notice = "Tag exiled to the pits of article fire and brimstone!"

  	redirect_to tags_path
  end
end
