class New < ActiveRecord::Base
    mount_uploader :image, ImageUploader
    has_many :comments
    acts_as_votable
    
    searchable do
    string :news_name
      text :news_content
end
    
end
