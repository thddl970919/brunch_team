class BookController < ApplicationController
    
    def index
        
        @books = Book.all
        
    end
    
    def mylist
        
        book=Book.find(params[:id])
        user = User.find(current_user.id)
        user.books << book
        user.save
        
        redirect_to :back
        
    end
    
    def check
       
       @user = User.find(current_user.id)
       @books = Book.all
        
    end
    
end
