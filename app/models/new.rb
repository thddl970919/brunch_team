class New < ActiveRecord::Base
    mount_uploader :image, ImageUploader
    has_many :comments
    acts_as_votable
    

end
    
<<<<<<< HEAD
=======
    

>>>>>>> b2d46263d99196238f0057199931d4624c4ba01a
