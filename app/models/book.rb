class Book < ActiveRecord::Base
    
    has_many :links
    has_many :posts, through: :links
    
     searchable do
    string :book_title
     
    
    
end
end