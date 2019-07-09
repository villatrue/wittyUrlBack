# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
BaseLink.destroy_all
UserLink.destroy_all

user_1 = User.create(username: "blue")
user_2 = User.create(username: "green")
user_3 = User.create(username: "red")

site_1 = BaseLink.create(url: "facebook.com", image: "blah")
site_2 = BaseLink.create(url: "twitter.com", image: "greaaaat")
site_3 = BaseLink.create(url: "instagram.com", image: "yada")
site_4 = BaseLink.create(url: "tumblr.com", image: "surrrreee")

link_1 = UserLink.create(user_id: user_1.id, baseLink_id: site_1.id, ending: "blueboy")
link_2 = UserLink.create(user_id: user_1.id, baseLink_id: site_2.id, ending: "blueboy")
link_3 = UserLink.create(user_id: user_1.id, baseLink_id: site_3.id, ending: "blueboy")
link_4 = UserLink.create(user_id: user_1.id, baseLink_id: site_4.id, ending: "blueboy")
link_5 = UserLink.create(user_id: user_2.id, baseLink_id: site_2.id, ending: "greenboy")
link_6 = UserLink.create(user_id: user_2.id, baseLink_id: site_3.id, ending: "greenboy")
link_7 = UserLink.create(user_id: user_2.id, baseLink_id: site_4.id, ending: "greenboy")
link_8 = UserLink.create(user_id: user_3.id, baseLink_id: site_2.id, ending: "redboy")
link_9 = UserLink.create(user_id: user_3.id, baseLink_id: site_2.id, ending: "redfanpageboy")
link_10 = UserLink.create(user_id: user_3.id, baseLink_id: site_3.id, ending: "redboy")
