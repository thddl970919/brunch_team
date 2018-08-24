class New < ActiveRecord::Base
    mount_uploader :image, ImageUploader
    has_many :comments
    acts_as_votable
    

end
<<<<<<< HEAD
    
=======
    

>>>>>>> e373b403d0c7f134665f88acb35a74cc9be120ca
