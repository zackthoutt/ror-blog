class CommentsController < ApplicationController
	def create
		@article = Article.find(params[:article_id])
		num_comments = @article.comments.length
		if num_comments <= 4
			@comment = @article.comments.create(comment_params)
		else
			flash[:max_comments] = "The maximum number of comments has been reached."
		end
		redirect_to article_path(@article)
	end

	def destroy
		@article = Article.find(params[:article_id])
		@comment = @article.comments.find(params[:id])
		@comment.destroy
		redirect_to article_path(@article)
	end

	private
		def comment_params
			params.require(:comment).permit(:name, :body)
		end
end
