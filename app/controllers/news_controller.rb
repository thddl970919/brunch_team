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
        @post.image = params[:image]
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
    
    def like
        @post = New.find(params[:id])
        if current_user.voted_for? @post
            @post.unliked_by(current_user)
        else
            @post.liked_by(current_user)
        end
        redirect_to :back
    end
  

def search
  @news = New.search do
    keywords params[:query]
  end.results
  
  respond_to do |format|
    format.html { render :action => "index" }
    format.xml  { render :xml => @posts }
  end
end
end