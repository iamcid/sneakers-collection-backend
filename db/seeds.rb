# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Sneaker.destroy_all
Comment.destroy_all

Sneaker.create(colorway: "Bred", name: "Yeezy 350", brand: "Adidas", price: 220.00, image: "https://stockx-360.imgix.net/adidas-Yeezy-Boost-350-V2-Core-Black-Red-2017/Images/adidas-Yeezy-Boost-350-V2-Core-Black-Red-2017/Lv2/img01.jpg?auto=format,compress&q=90&updated_at=1606320792&w=1000")

Comment.create(message: "Favorite Yeezy", sneaker_id: 44)