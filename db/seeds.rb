# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

Category.destroy_all
Producer.destroy_all
User.destroy_all

CATEGORIES = [["🥬", "Fruits"], ["🥬", "Veggetables"], ["🥬", "Meat"], ["🥬", "Milk"], ["🥬", "Cheese"], ["🥬", "Flowers"], ["🥬", "Chicken"], ["🥬", "Cow"], ["🥬", "Goat"], ["🥬", "Sheep"], ["🥬", "Fish"], ["🥬", "Honey"], ["🥬", "Eggs"], ["🥬", "Wine"], ["🥬", "Bread"]]

CATEGORIES.each do |category_array|
  Category.create!(name: category_array[1], emoji:category_array[0])
end

file_user1 = URI.open('https://res.cloudinary.com/dj0dllkwn/image/upload/v1655133837/samples/farmcity/x5jrwv4m34jgss4tsuc4.png')
user1 = User.create!(email: "judith@gmail.com", password: "farmcity", password_confirmation: "farmcity")
user1.photo.attach(io: file_user1, filename: 'nes.png', content_type: 'image/jpg')

file_user2 = URI.open('https://res.cloudinary.com/dj0dllkwn/image/upload/v1655135922/samples/farmcity/agriculteur-jardinier-icone-eleveur-illustration-avatar-personne-style-souligne-couleur_163463-327_byj0ib.jpg')
user2 = User.create!(email: "andrea@gmail.com", password: "farmcity2", password_confirmation: "farmcity2")
user2.photo.attach(io: file_user2, filename: 'nes.png', content_type: 'image/jpg')

file_apiculteur = URI.open('https://res.cloudinary.com/dj0dllkwn/image/upload/v1655132656/samples/farmcity/images_tyeqaz.jpg')
file_poulet = URI.open('https://res.cloudinary.com/dj0dllkwn/image/upload/v1655132750/samples/farmcity/B9723699104Z.1_20200612162335_000_2BGJEG5EV61.2-0_syhdis.jpg')
file_vache = URI.open('https://res.cloudinary.com/dj0dllkwn/image/upload/v1655132687/samples/farmcity/farmer_hny1h7.jpg')
file_mouton = URI.open('https://res.cloudinary.com/dj0dllkwn/image/upload/v1655132949/samples/farmcity/2329947_16095157-tttmouton-20131207-v131t_npj9fl.jpg')
file_mouton2 = URI.open('https://res.cloudinary.com/dj0dllkwn/image/upload/v1655133737/samples/farmcity/images_jqzema.jpg')
file_mais = URI.open('https://res.cloudinary.com/dj0dllkwn/image/upload/v1655132876/samples/farmcity/4UIDGO6K1_web_snjnp0.jpg')
file_courge = URI.open('https://res.cloudinary.com/dj0dllkwn/image/upload/v1655133132/samples/farmcity/images_oqorkx.jpg')

photos_apiculteur = [
  { io: file_apiculteur, filename: 'nes.png', content_type: 'image/jpg' }
]

photos_vache = [
  { io: file_vache, filename: 'nes.png', content_type: 'image/jpg' }
]

photos_moutons = [
  { io: file_mouton, filename: 'nes.png', content_type: 'image/jpg' },
  { io: file_mouton2, filename: 'nes.png', content_type: 'image/jpg' }
]

photos_poulet = [
  {io: file_poulet, filename: 'nes.png', content_type: 'image/jpg'}
]

photos_legumes = [
  {io: file_mais, filename: 'nes.png', content_type: 'image/jpg'},
  {io: file_courge, filename: 'nes.png', content_type: 'image/jpg'}
]
apiculteur = Producer.new(name: "maya l'abeille", address: "249 Chemin de la Bonnefont, 83490 Le Muy", producer_type: "apiculteur", description: "L’Abeille de l’Estérel c’est avant tout une entreprise familiale et une histoire de partage : nos parents nous ont transmis leur passion pour l’apiculture il y a de nombreuses années.", contact: "maya@gmail.com", user: user1)
apiculteur.photos.attach(photos_apiculteur)
apiculteur.save!

eleveur_vache = Producer.new(name: "meuhmeu", address: "12 Chemin de la Bonnefont, savoie", producer_type: "eleveur de vaches", description: "la vache de l’Estérel c’est avant tout une entreprise familiale et une histoire de partage : nos parents nous ont transmis leur passion pour les vaches il y a de nombreuses années.", contact: "meumeuh@gmail.com", user: user1)
eleveur_vache.photos.attach(photos_vache)
eleveur_vache.save!

eleveur_moutons = Producer.new(name: "beeee", address: "12 Chemin de la Bonnefont, savoie", producer_type: "eleveur de moutons", description: "Le mouton de l’Estérel c’est avant tout une entreprise familiale et une histoire de partage : nos parents nous ont transmis leur passion pour les moutons il y a de nombreuses années.", contact: "beeee@gmail.com", user: user2)
eleveur_moutons.photos.attach(photos_moutons)
eleveur_moutons.save!

eleveur_poulet = Producer.new(name: "cotcot", address: "12 Chemin de la Bonnefont, savoie", producer_type: "eleveur de poules", description: "La poule de l’Estérel c’est avant tout une entreprise familiale et une histoire de partage : nos parents nous ont transmis leur passion pour les poules il y a de nombreuses années.", contact: "cotcot@gmail.com", user: user2)
eleveur_poulet.photos.attach(photos_poulet)
eleveur_poulet.save!

agriculteur = Producer.new(name: "Legume", address: "12 Chemin de la Bonnefont, savoie", producer_type: "agriculteur", description: "Les legumes de l’Estérel c’est avant tout une entreprise familiale et une histoire de partage : nos parents nous ont transmis leur passion pour les legumes il y a de nombreuses années.", contact: "legumes@gmail.com", user: user1)
agriculteur.photos.attach(photos_legumes)
agriculteur.save!
