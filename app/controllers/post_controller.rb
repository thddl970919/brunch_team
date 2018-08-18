class PostController < ApplicationController
    
    def index
        @posts = Post.all
    end
    
    def new
    end
    
    def create
        @post = Post.new
        @post.post_title = params[:post_title]
        @post.post_content = params[:post_content]
        @post.save
    
    redirect_to '/post/index'
    end
    
    def show
        @post=Post.find(params[:id])
    end
    
    def edit
        @post = Post.find(params[:id])
    end
    
    def update
        post=Post.find(params[:id])
        post.post_title =params[:post_title]
        post.post_content=params[:post_content]
        post.save
        redirect_to '/post/index'
    end
    
    def destroy
        post = Post.find(params[:id])
        post.destroy
        redirect_to '/post/index'
    end
    
end
