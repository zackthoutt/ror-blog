class TagsController < ApplicationController
	def index
		@tags = Article.tag_counts
	end

	def show
		@articles = Article.tagged_with(params[:id])
	end
end
