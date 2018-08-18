class NewsCommentController < ApplicationController
    
    def create
        @comment = Comment.new
        @comment.content = params[:comment]
        @comment.new_id = params[:post_id]
        @comment.save
    
        redirect_to :back
    end
    
    def destroy
        comment = Comment.find(params[:comment_id])
        comment.destroy
        
        redirect_to :back
    end
    
    def edit
        @comment = Comment.find(params[:comment_id])
        @comment.new_id = params[:post_id]
    end
    
    def update
        @comment = Comment.find(params[:comment_id])
        @comment.new_id = params[:post_id]
        @comment.content = params[:content]
        @comment.save
    
        redirect_to :back
    end
    
end
