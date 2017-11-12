class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|

      t.integer :user_id
      t.string :boardUser
      t.string :boardUserBGID
      
      t.string :boardCategory
      t.text :boardContent
      t.string :board_image_url 
      
      t.timestamps null: false
    end
  end
end
