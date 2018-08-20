class Link < ActiveRecord::Base
    
    belongs_to :post
    belongs_to :book
    
end
