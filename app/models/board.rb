class Board < ActiveRecord::Base
     
     resourcify
     
     belongs_to :users
     
     mount_uploader :board_image_url, UpboardUploader

end
