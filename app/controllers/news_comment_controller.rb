class NewsCommentController < ApplicationController
    
    def create
        @comment = Comment.new
        @comment.content = params[:comment]
        @comment.new_id = params[:post_id]
        @comment.save
    
        redirect_to :back
    end
    
end
