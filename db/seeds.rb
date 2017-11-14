# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

(1..10).each do |i|
    User.create(email: "rlfgus#{i}@gmail.com", bgid: "rlfgus#{i}", password: "rlfgus#{i}", password_confirmation: "rlfgus#{i}")
    (1..5).each do |j|
        Board.create(user_id: i, boardUser: "rlfgus#{i}@gmail.com", boardUserBGID: "rlfgus#{i}", boardCategory: "Duo", board_create_time: 1510498810)
    end
end