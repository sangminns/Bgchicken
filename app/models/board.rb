class Board < ActiveRecord::Base
     
     has_many :users
     
     mount_uploader :board_image_url, UpboardUploader

end
