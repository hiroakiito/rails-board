# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
if Rails.env == 'development'
  (1..3).each do |i|
    Board.create(name: "投稿者#{i}", title: "甲子園#{i}日目", body: "第#{i}試合")
  end

  Tag.create([
    { name: '青森' },
    { name: '秋田' },
    { name: '岩手' },
    { name: '宮城' },
    { name: '山形' },
    { name: '福島' },
    ])
end
