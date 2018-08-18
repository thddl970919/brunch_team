class NewsController < ApplicationController
    
    def index
        @posts = New.all
    end
    
    def new
    end
    
    def create
        @post = New.new
        @post.news_name = params[:news_title]
        @post.news_content = params[:news_content]
        @post.save
    
    redirect_to '/news/index'
    end
    
    def show
        @post=New.find(params[:id])
    end
    
    def edit
        @post = New.find(params[:id])
    end
    
    def update
        post=New.find(params[:id])
        post.news_name=params[:news_title]
        post.news_content=params[:news_content]
        post.save
        redirect_to '/news/index'
    end
    
    def destroy
        post = New.find(params[:id])
        post.destroy
        redirect_to '/news/index'
    end
    
end
