# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Baselink.destroy_all
Userlink.destroy_all

user_1 = User.create(username: "blue")
user_2 = User.create(username: "green")
user_3 = User.create(username: "red")

site_1 = Baselink.create(url: "facebook.com", image: "https://imgur.com/6dXJigE")
site_2 = Baselink.create(url: "twitter.com", image: "https://imgur.com/TyoMIq5")
site_3 = Baselink.create(url: "instagram.com", image: "https://imgur.com/7xojA2Q")
site_4 = Baselink.create(url: "tumblr.com", image: "https://imgur.com/crfRqWG")

link_1 = Userlink.create(user_id: user_1.id, baselink_id: site_1.id, url: "blueboy")
link_2 = Userlink.create(user_id: user_1.id, baselink_id: site_2.id, url: "blueboy")
link_3 = Userlink.create(user_id: user_1.id, baselink_id: site_3.id, url: "blueboy")
link_4 = Userlink.create(user_id: user_1.id, baselink_id: site_4.id, url: "blueboy")
link_5 = Userlink.create(user_id: user_2.id, baselink_id: site_2.id, url: "greenboy")
link_6 = Userlink.create(user_id: user_2.id, baselink_id: site_3.id, url: "greenboy")
link_7 = Userlink.create(user_id: user_2.id, baselink_id: site_4.id, url: "greenboy")
link_8 = Userlink.create(user_id: user_3.id, baselink_id: site_2.id, url: "redboy")
link_9 = Userlink.create(user_id: user_3.id, baselink_id: site_2.id, url: "redfanpageboy")
link_10 = Userlink.create(user_id: user_3.id, baselink_id: site_3.id, url: "redboy")
