class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|

      t.integer :user_id
      t.string :boardUser
      t.string :boardUserBGID
      
      t.string :boardCategory
      t.text :boardContent
      t.string :board_image_url
      t.integer :board_create_time
      t.boolean :board_private
      
      t.timestamps null: false
    end
  end
end
