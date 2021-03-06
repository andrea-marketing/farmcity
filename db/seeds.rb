# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

Favorite.destroy_all
Market.destroy_all
Producer.destroy_all
User.destroy_all

 puts "destroy finished"
file_user1 = URI.open('https://res.cloudinary.com/dj0dllkwn/image/upload/v1655133837/samples/farmcity/x5jrwv4m34jgss4tsuc4.png')
user1 = User.create!(email: "judith@gmail.com", password: "farmcity", password_confirmation: "farmcity", first_name: "Judith", last_name: "Karouby")
user1.photo.attach(io: file_user1, filename: 'nes.png', content_type: 'image/jpg')

file_user2 = URI.open('https://res.cloudinary.com/dj0dllkwn/image/upload/v1655135922/samples/farmcity/agriculteur-jardinier-icone-eleveur-illustration-avatar-personne-style-souligne-couleur_163463-327_byj0ib.jpg')
user2 = User.create!(email: "max@gmail.com", password: "farmcity2", password_confirmation: "farmcity2", first_name: "Max", last_name: "Bernard")
user2.photo.attach(io: file_user2, filename: 'nes.png', content_type: 'image/jpg')
puts "user finished"
#file_apiculteur = URI.open('https://res.cloudinary.com/dj0dllkwn/image/upload/v1655132656/samples/farmcity/images_tyeqaz.jpg')
#file_poulet = URI.open('https://res.cloudinary.com/dj0dllkwn/image/upload/v1655132656/samples/farmcity/images_tyeqaz.jpg')
#file_vache = URI.open('https://res.cloudinary.com/dj0dllkwn/image/upload/v1655132687/samples/farmcity/farmer_hny1h7.jpg')
#file_mouton = URI.open('https://res.cloudinary.com/dj0dllkwn/image/upload/v1655132656/samples/farmcity/images_tyeqaz.jpg')
#file_mouton2 = URI.open('https://res.cloudinary.com/dj0dllkwn/image/upload/v1655132656/samples/farmcity/images_tyeqaz.jpg')
#file_mais = URI.open('https://res.cloudinary.com/dj0dllkwn/image/upload/v1655132656/samples/farmcity/images_tyeqaz.jpg')
#file_courge = URI.open('https://res.cloudinary.com/dj0dllkwn/image/upload/v1655133132/samples/farmcity/images_oqorkx.jpg')
file_apiculteur = URI.open('https://res.cloudinary.com/dj0dllkwn/image/upload/v1655370622/samples/farmcity/hansjorg-keller-OJHxRwXWXBs-unsplash_ubjm5g.jpg')
file_apiculteur2 = URI.open('https://res.cloudinary.com/dj0dllkwn/image/upload/v1655370611/samples/farmcity/hiveboxx-65icrs88YYs-unsplash_q0t80o.jpg')

file_poulet = URI.open('https://res.cloudinary.com/dj0dllkwn/image/upload/v1655370519/samples/farmcity/william-moreland-8wWpDF4Av-Y-unsplash_vmuqan.jpg')
file_poulet2 = URI.open('https://res.cloudinary.com/dj0dllkwn/image/upload/v1655370744/samples/farmcity/louis-hansel-onxjrr3Erwc-unsplash_w41lhz.jpg')

file_vache = URI.open('https://res.cloudinary.com/dj0dllkwn/image/upload/v1655132687/samples/farmcity/farmer_hny1h7.jpg')

file_vache2 = URI.open('https://res.cloudinary.com/dj0dllkwn/image/upload/v1655370601/samples/farmcity/jonas-koel-nnxWQZTmoxQ-unsplash_wcc8nf.jpg')
file_vache3 = URI.open('https://res.cloudinary.com/dj0dllkwn/image/upload/v1655370591/samples/farmcity/gilles-detot-gUebCivJHjc-unsplash_iqr4si.jpg')

file_mouton = URI.open('https://res.cloudinary.com/dj0dllkwn/image/upload/v1655370633/samples/farmcity/laurie-decroux-tJ2Afghgn0o-unsplash_rjveox.jpg')
file_mouton2 = URI.open('https://res.cloudinary.com/dj0dllkwn/image/upload/v1655371720/samples/farmcity/judith-prins-AJa7S1fjy-I-unsplash_bx5hhk.jpg')

file_legumes = URI.open('https://res.cloudinary.com/dj0dllkwn/image/upload/v1655370560/samples/farmcity/randy-fath-5aJVJvJ9rG8-unsplash_jv29nj.jpg')
file_legumes2 = URI.open('https://res.cloudinary.com/dj0dllkwn/image/upload/v1655370579/samples/farmcity/nathan-dumlao-bRdRUUtbxO0-unsplash_xhhhyn.jpg')

file_fruits = URI.open('https://res.cloudinary.com/dj0dllkwn/image/upload/v1655370539/samples/farmcity/tom-brunberg-D4ZtZX1UeAI-unsplash_as58b9.jpg')

file_poissons = URI.open('https://res.cloudinary.com/dj0dllkwn/image/upload/v1655370697/samples/farmcity/osvaldo-escobar-s2n7orz5pQk-unsplash_soy0h2.jpg')
file_poissons2 = URI.open('https://res.cloudinary.com/dj0dllkwn/image/upload/v1655370677/samples/farmcity/karl-muscat-sEqo82gbhUY-unsplash_mzilxp.jpg')

file_poissons3 = URI.open('https://res.cloudinary.com/dj0dllkwn/image/upload/v1655370711/samples/farmcity/noaa-xp3xtQW3pqs-unsplash_lqfn1r.jpg')
file_poissons4 = URI.open('https://res.cloudinary.com/dj0dllkwn/image/upload/v1655370725/samples/farmcity/jakub-kapusnak-vLQzopDRSNI-unsplash_iegeo2.jpg')

file_lait = URI.open('https://res.cloudinary.com/dj0dllkwn/image/upload/v1655370451/samples/farmcity/mehrshad-rajabi-P7MkoYvSnLI-unsplash_pzdhuj.jpg')
file_lait2 = URI.open('https://res.cloudinary.com/dj0dllkwn/image/upload/v1655370460/samples/farmcity/mihail-macri-gq-IUqXTvB4-unsplash_fmfvnn.jpg')

file_fromage = URI.open('https://res.cloudinary.com/dj0dllkwn/image/upload/v1655370480/samples/farmcity/alexander-maasch-KaK2jp8ie8s-unsplash_pjpvma.jpg')
file_fromage2 = URI.open('https://res.cloudinary.com/dj0dllkwn/image/upload/v1655370501/samples/farmcity/azzedine-rouichi-YW_5rJvAdKw-unsplash_r0cjbw.jpg')

photos_apiculteur = [
  { io: file_apiculteur, filename: 'nes.png', content_type: 'image/jpg' },
  { io: file_apiculteur2, filename: 'nes.png', content_type: 'image/jpg' }
]

photos_vache1 = [
  { io: file_vache, filename: 'nes.png', content_type: 'image/jpg' }
]

photos_vache2 = [
  { io: file_vache2, filename: 'nes.png', content_type: 'image/jpg' },
  { io: file_vache3, filename: 'nes.png', content_type: 'image/jpg' }
]

photos_moutons = [
  { io: file_mouton, filename: 'nes.png', content_type: 'image/jpg' },
  { io: file_mouton2, filename: 'nes.png', content_type: 'image/jpg' }
]

photos_poulet = [
  { io: file_poulet, filename: 'nes.png', content_type: 'image/jpg' },
  { io: file_poulet2, filename: 'nes.png', content_type: 'image/jpg' }
]

photos_agriculteur = [
  { io: file_legumes, filename: 'nes.png', content_type: 'image/jpg' },
  { io: file_legumes2, filename: 'nes.png', content_type: 'image/jpg' },
  { io: file_fruits, filename: 'nes.png', content_type: 'image/jpg' }
]

photos_poissons = [
  { io: file_poissons, filename: 'nes.png', content_type: 'image/jpg' },
  { io: file_poissons2, filename: 'nes.png', content_type: 'image/jpg' }
]

photos_poissons2 = [
  { io: file_poissons3, filename: 'nes.png', content_type: 'image/jpg' },
  { io: file_poissons4, filename: 'nes.png', content_type: 'image/jpg' }
]

photos_lait = [
  { io: file_lait, filename: 'nes.png', content_type: 'image/jpg' },
  { io: file_lait2, filename: 'nes.png', content_type: 'image/jpg' }
]

photos_fromage = [
  { io: file_fromage, filename: 'nes.png', content_type: 'image/jpg' },
  { io: file_fromage2, filename: 'nes.png', content_type: 'image/jpg' }
]

apiculteur = Producer.new(name: "L'abeille de l'Est??rel", address: "470 Av. du Col-de l'Ange, 13420 G??menos", producer_type: "Production artisanale de miels",
                          description: "L'Abeille de l'Est??rel c'est avant tout une entreprise familiale et une histoire de partage : nos parents nous ont transmis leur passion pour l'apiculture il y a de nombreuses ann??es.
                          En 2010, nous avons achet?? notre premi??re ruche et 8 ans apr??s, nous avons d??cid?? de devenir apiculteurs professionnels. Notre exploitation regroupe 800 ruches ?? ce jour.
                          Aujourd'hui nous nous concentrons sur notre c??ur de m??tier qui est la vente de miel et produits d??riv??s. Nous avons l'envie et la volont?? de partager notre savoir-faire tout en prot??geant l'environnement.",
                          contact: "labeille-de-lesterel@gmail.com", user: user1)
apiculteur.photos.attach(photos_apiculteur)
apiculteur.category_list = ["???? Honey"]
apiculteur.save

eleveur_vache = Producer.new(name: "La ferme de Romain", address: "Chemin de la Capelane, 13170 Les Pennes-Mirabeau", producer_type: "Elevage de vaches",
                             description: "Agriculteur dans les Alpes-de-Haute-Provence, j'ai une production de Vaches Aubrac avec ventes de veaux ros??s ??lev??s sous la m??re", contact: "la-ferme-de-romain@gmail.com", user: user1)
eleveur_vache.photos.attach(photos_vache1)
eleveur_vache.category_list = ["???? Cow"]
eleveur_vache.save

eleveur_vache2 = Producer.new(name: "Les delices du Scamandre", address: "11951 route des iscles, Saint-Gilles 30800", producer_type: "Elevage de vaches",
                             description: "Nous sommes une famille de Paysan engag?? dans l'agriculture ??cologique depuis 2 g??n??rations. Nous avons un ??levage de taureau en AOP Taureau de Camargue Bio d'environ 550 t??tes, en petite Camargue Gardoise situ?? ?? cheval sur les communes de Saint gilles et Vauvert au sud de l'??tang du Scamandre dans le Gard.
                             Nous commercialisons toute l'ann??e sur l'exploitation et en exp??dition dans la France enti??re et plus, toute notre excellente viande de taureau (qui en aop taureau de Camargue et recommand?? par les nutritionnistes, car pauvre en mati??re grasses satur??), terrines (plus de 25 diff??rentes), plats pr??par?? (comme la gardiane plat embl??matique de Camargue, tripes, bolognaise de taureau avec beaucoup de viande...) charcuteries de taureau, jambon de taureau ...
                             Notre troupeau et en total libert?? aliment?? exclusivement de l'herbe de l'exploitation, des foins, luzernes et c??r??ales que nous produisons.", contact: "les-delices-du-scamandre@gmail.com", user: user1)
eleveur_vache2.photos.attach(photos_vache2)
eleveur_vache2.category_list = ["???? Cow", "???? Meat"]
eleveur_vache2.save

eleveur_moutons = Producer.new(name: "Les bons Agneaux", address: "13530 Trets", producer_type: "Elevage de moutons",
                              description: "Situ?? dans les collines Tretsoise ?? une vingtaine de kilom??tre d'Aix en Provence, notre ??levage de mouton est n?? en 2009. Nous ??levons des brebis de race M??rinos d'Arles. C'est un animal qui est bien adapt?? aux ??levages extensifs tel que le notre.
                              Les moutons sont ??lev??s dans la colline du Domaine de Grand Boise en syst??me sylvo-pastoral. Ils mangent du thym, du romarin, de la fillaire, de l'aphyllante, de la garance mais aussi des glands ?? l'automne. C'est un ??levage extensif, conduit en plein air dans la garrigue proven??ale.", contact: "les-bons-agneaux@gmail.com", user: user2)
eleveur_moutons.photos.attach(photos_moutons)
eleveur_moutons.category_list = ["???? Sheep"]
eleveur_moutons.save

eleveur_poulet = Producer.new(name: "La Poule de Crau", address: "Chemin du mas d'Espagne, 13430 Eygui??res", producer_type: "Elevage de volailles",
                            description: "Situ??e au pied des monts de Vaucluse, en plein c??ur du Parc Naturel R??gional du Luberon, notre exploitation agricole Poules & Co. est implant??e sur une terre arbor??e de ch??nes verts dans un environnement calme. Retrouvez-nous Laura, Samantha et Manon. Nous avons choisi pour les poulets et les poules pondeuses, de produire selon le cahier des charges de l'agriculture biologique, le tout pour des produits de qualit??.",
                            contact: "la-poule-de-crau@gmail.com", user: user2)
eleveur_poulet.photos.attach(photos_poulet)
eleveur_poulet.category_list = [ "???? Chicken","???? Eggs"]
eleveur_poulet.save

agriculteur = Producer.new(name: "Terre de Liens", address: "248 Chemin du Coupereau, 83320 Carqueiranne", producer_type: "Production de fruits et l??gumes",
                          description: "Production en plein-champs sur 6 hectares de fruits et de l??gumes de saison, en culture traditionnelle, dans la plaine des Aubes ?? Aubagne.
                          Notre production r??pond aux exigences du cahier des charges de la marque 'Les Jardins du Pays d'Aubagne'.
                          Nous produisons pr??s de 50 esp??ces de fruits et l??gumes mara??chers avec des fa??ons et techniques culturales h??rit??es de nos anc??tres
                          que nous avons modernis??es et adapt??es ?? la demande actuelle.", contact: "terre-de-liens@gmail.com", user: user2)
agriculteur.photos.attach(photos_agriculteur)
agriculteur.category_list = ["???? Vegetables", "???? Fruits", "???? Wine"]
agriculteur.save

pecheur = Producer.new(name: "Pierre et le Loup", address: "205 All. de la Petite Mer, 83500 La Seyne-sur-Mer", producer_type: "Elevage de poissons et fruits de mer",
                      description: "Tamaris Sud Fish situ?? ?? La Seyne-sur-Mer dans le Var assure la production de poissons. Les poissons grandissent dans leur milieu naturel, en pleine mer, pendant 2 ans, dans le respect de leur cycle de vie naturel pr??servant ainsi leur bien-??tre (repos en hiver). Ils sont sans parasite et ne subissent aucun traitement antibiotique.
                      La densit?? d'??levage est calcul??e entre le volume des cages et la charge en poissons (biomasse). Elle est au maximum de 25 kg/m?? afin que les poissons puissent nager en toute qui??tude en se forgeant ainsi une morphologie parfaite.",
                      contact: "pierre-et-le-loup@gmail.com", user: user1)
pecheur.photos.attach(photos_poissons)
pecheur.category_list = ["???? Fish"]
pecheur.save

pecheur2 = Producer.new(name: "Pisciculture MARIN", address: "1021 Rte d'Apt, 84800 L'Isle-sur-la-Sorgue", producer_type: "Elevage de poissons et fruits de mer",
                       description: "Les poissons sont nourris avec un aliment garanti sans OGM, sans antibiotique, avec des farines de poissons issus de la p??che durable. L'aliment est choisi soigneusement en fonction de sa composition et de sa provenance.
                       Selon le stade de d??veloppement, la quantit?? d'aliments donn??e est adapt??e. Nous veillons ?? respecter un temps de grossissement qui se veut le plus naturel possible, afin de produire un poisson non gras, avec une chair ferme de haute qualit??.", contact: "pisciculture-marin@gmail.com", user: user1)
pecheur2.photos.attach(photos_poissons2)
pecheur2.category_list = ["???? Fish"]
pecheur2.save

lait = Producer.new(name: "Ferme Mistral", address: "800 chemin des cabans 13300 Salon-de-Provence", producer_type: "Production de produits laitiers",
                   description: "La Cabrouno, un ??levage au naturel de vaches aux portes d'Aix-en-Provence !
                   Les vaches puisent dans les garrigues proven??ales la nourriture qui donne ?? leur lait et leurs fromages un go??t aussi merveilleux???", contact: "ferme-mistral@gmail.com", user: user2)
lait.photos.attach(photos_lait)
lait.category_list = ["???? Milk", "???? Cheese"]
lait.save

fromage = Producer.new(name: "La Fromagerie Magnaldi", address: "83740 La Cadi??re-d'Azur", producer_type: "Production de produits laitiers",
                       description: "La Fromagerie Magnaldi, install??e ?? La Cadi??re-d'Azur dans le Var, vous pr??sente ses sp??cialit??s de fromage. Nous poss??dons un troupeau de 150 ch??vres qui portent toutes un pr??nom. Pour un fromage parfait, nous les sortons tous les jours dans la garrigue.
                       Nous travaillons en famille, chacun a son r??le. Notre fils J??r??me, est le sp??cialiste du fromage, il fabrique des tommes, de la cr??me fraiche, du beurre en certaines p??riodes.
                       Roger Magnaldi s'occupe des soins des animaux et de tous les agencements et r??parations du mat??riel.
                       Christine Magnaldi sort le troupeau, aide ?? la fabrication des fromages et assure quelques march??s.
                       Notre belle fille Sandra vend ??galement les fromages.", contact: "fromagerie-magnaldi@gmail.com", user: user2)
fromage.photos.attach(photos_fromage)
fromage.category_list = ["???? Cheese", "???? Goat"]
fromage.save

# markets
soleil_file = URI.open('https://res.cloudinary.com/dj0dllkwn/image/upload/v1655372452/market_show_qghmvb.jpg')
soleil_market = Market.new(name: "March?? Du Soleil", address: "5 Rue Fauchier, 13002 Marseille", description: "Il serait dommage de venir ?? Marseille sans un petit tour par le march?? du soleil ! Dans cette ville g??ographiquement et historiquement proche de l'Afrique du Nord, c'est un v??ritable souk oriental que vous d??couvrirez avenue Camille Pelletan, pr??s de la porte d'Aix. Epices, fruits et l??gumes, v??tements, objets de d??coration??? le d??paysement est total !", market_type: "??????????? Market", opening_time: "Du lundi au samedi de 8h00 ?? 13h30")
soleil_market.photo.attach(io: soleil_file, filename: 'soleil.jpg', content_type: 'image/jpg')
soleil_market.save

plaine_file = URI.open("https://res.cloudinary.com/dj0dllkwn/image/upload/v1655801199/samples/farmcity/annie-spratt-kr_88BakygA-unsplash_q5pn9y.jpg")
plaine_market = Market.new(name: "March?? de la Plaine", address: "Pl. Jean Jaur??s, 13001 Marseille", description: "Apr??s presque 4 ans d'attente, le march?? de la Plaine est de retour sur la place Jean-Jaur??s. Les jours de march?? seront les mardis, jeudis et samedis, comme avant les travaux.", market_type: "??????????? Market", opening_time: "Du lundi au samedi de 8h00 ?? 13h30")
plaine_market.photo.attach(io: plaine_file, filename: 'plaine.jpg', content_type: 'image/jpg')
plaine_market.save

prado_file = URI.open("https://res.cloudinary.com/dj0dllkwn/image/upload/v1655801168/samples/farmcity/jonathan-noack-f1jcqskqsBM-unsplash_qxkx7y.jpg")
prado_market = Market.new(name: "March?? du Prado", address: "99 Av. du Prado, 13008 Marseille", description: "Vaste march?? en plein air proposant large choix d'articles, des produits frais aux v??tements d'occasion.", market_type: "??????????? Market", opening_time: "Du lundi au samedi de 8h00 ?? 13h30")
prado_market.photo.attach(io: prado_file, filename: 'prado.jpg', content_type: 'image/jpg')
prado_market.save

Producer.where.not(user: user1).last(2).each do |producer|
  Favorite.create(producer: producer, user: user1)
end

# shops
potager_file = URI.open("https://res.cloudinary.com/dj0dllkwn/image/upload/v1655801004/samples/farmcity/muneeb-syed-fAu1Ai0Xh4s-unsplash_vf2o9i.jpg")
potager_shop = Market.new(name: "Potager City", address: "87 Rue d'Italie, 13006 Marseille", description: "Le meilleur magasin bio de Marseille avec des prix ??quitables et bien moindre que ceux des concurrents 'bio-opportunistes'. Il y a un v??ritable engagement chez Potager City, tant du point de vue ??cologique que pour les producteurs", market_type: "???? Shop", opening_time: "Du lundi au samedi, de 9h00 ?? 19h00")
potager_shop.photo.attach(io: potager_file, filename: 'nes.jpg', content_type: 'image/jpg')
potager_shop.save

biofarm_file = URI.open("https://res.cloudinary.com/dj0dllkwn/image/upload/v1655801158/samples/farmcity/lona-0BaEdsR8IRY-unsplash_t1rpbq.jpg")
biofarm_shop = Market.new(name: "Bio Farm", address: "90 Bd de la Corderie, 13007 Marseille", description: "Bio Farm est une ??picerie fine bio mettant en valeur les petits producteurs de la r??gion proven??ale au travers de produits locaux rigoureusement s??lectionn??s.", market_type: "???? Shop", opening_time: "Du lundi au samedi, de 10h00 ?? 18h00")
biofarm_shop.photo.attach(io: biofarm_file, filename: 'nes.jpg', content_type: 'image/jpg')
biofarm_shop.save

green_file = URI.open("https://res.cloudinary.com/dj0dllkwn/image/upload/v1655801074/samples/farmcity/jason-blackeye-K1uLEiqTQEA-unsplash_qroyiz.jpg")
green_shop = Market.new(name: "Green", address: "51 Bd Chave, 13005 Marseille", description: "Green est une ??picerie de produits bio provenants de producteurs locaux.", market_type: "???? Shop", opening_time: "Du lundi au samedi, de 10h00 ?? 18h00")
green_shop.photo.attach(io: green_file, filename: 'nes.jpg', content_type: 'image/jpg')
green_shop.save
