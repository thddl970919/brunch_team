class Book < ActiveRecord::Base
    
    has_many :links
    has_many :posts, through: :links
    
 
    #  searchable do 
        # string :book_title
        
    def self.search(query)
        self.where("book_title LIKE ?","%#{query}%")
    end

end