class BookController < ApplicationController
    
    def index
        if params[:search]
            @books = Book.search(params[:search])
        else
            @books = Book.all
        end
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
