# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

Market.destroy_all
Producer.destroy_all
User.destroy_all

file_user1 = URI.open('https://res.cloudinary.com/dj0dllkwn/image/upload/v1655133837/samples/farmcity/x5jrwv4m34jgss4tsuc4.png')
user1 = User.create!(email: "judith@gmail.com", password: "farmcity", password_confirmation: "farmcity", first_name: "Judith", last_name: "Karouby")
user1.photo.attach(io: file_user1, filename: 'nes.png', content_type: 'image/jpg')

file_user2 = URI.open('https://res.cloudinary.com/dj0dllkwn/image/upload/v1655135922/samples/farmcity/agriculteur-jardinier-icone-eleveur-illustration-avatar-personne-style-souligne-couleur_163463-327_byj0ib.jpg')
user2 = User.create!(email: "max@gmail.com", password: "farmcity2", password_confirmation: "farmcity2", first_name: "Max", last_name: "Bernard")
user2.photo.attach(io: file_user2, filename: 'nes.png', content_type: 'image/jpg')

file_apiculteur = URI.open('https://res.cloudinary.com/dj0dllkwn/image/upload/v1655132656/samples/farmcity/images_tyeqaz.jpg')
file_poulet = URI.open('https://res.cloudinary.com/dj0dllkwn/image/upload/v1655132656/samples/farmcity/images_tyeqaz.jpg')
file_vache = URI.open('https://res.cloudinary.com/dj0dllkwn/image/upload/v1655132687/samples/farmcity/farmer_hny1h7.jpg')
file_mouton = URI.open('https://res.cloudinary.com/dj0dllkwn/image/upload/v1655132656/samples/farmcity/images_tyeqaz.jpg')
file_mouton2 = URI.open('https://res.cloudinary.com/dj0dllkwn/image/upload/v1655132656/samples/farmcity/images_tyeqaz.jpg')
file_mais = URI.open('https://res.cloudinary.com/dj0dllkwn/image/upload/v1655132656/samples/farmcity/images_tyeqaz.jpg')
file_courge = URI.open('https://res.cloudinary.com/dj0dllkwn/image/upload/v1655133132/samples/farmcity/images_oqorkx.jpg')
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

apiculteur = Producer.new(name: "L'abeille de l’Estérel", address: "470 Av. du Col-de l'Ange, 13420 Gémenos", producer_type: "Production artisanale de miels",
                          description: "L’Abeille de l’Estérel c’est avant tout une entreprise familiale et une histoire de partage : nos parents nous ont transmis leur passion pour l’apiculture il y a de nombreuses années.
                          En 2010, nous avons acheté notre première ruche et 8 ans après, nous avons décidé de devenir apiculteurs professionnels. Notre exploitation regroupe 800 ruches à ce jour.
                          Aujourd’hui nous nous concentrons sur notre cœur de métier qui est la vente de miel et produits dérivés. Nous avons l’envie et la volonté de partager notre savoir-faire tout en protégeant l’environnement.",
                          contact: "labeille-de-lesterel@gmail.com", user: user1)
apiculteur.photos.attach(photos_apiculteur)
apiculteur.save

eleveur_vache = Producer.new(name: "La ferme de Romain", address: "Chemin de la Capelane, 13170 Les Pennes-Mirabeau", producer_type: "Elevage de vaches",
                             description: "Agriculteur dans les Alpes-de-Haute-Provence, j'ai une production de Vaches Aubrac avec ventes de veaux rosés élevés sous la mère", contact: "la-ferme-de-romain@gmail.com", user: user1)
eleveur_vache.photos.attach(photos_vache1)
eleveur_vache.save

eleveur_vache2 = Producer.new(name: "Les delices du Scamandre", address: "11951 route des iscles, Saint-Gilles 30800", producer_type: "Elevage de vaches",
                             description: "Nous sommes une famille de Paysan engagé dans l'agriculture écologique depuis 2 générations. Nous avons un élevage de taureau en AOP Taureau de Camargue Bio d'environ 550 têtes, en petite Camargue Gardoise situé à cheval sur les communes de Saint gilles et Vauvert au sud de l'étang du Scamandre dans le Gard.
                             Nous commercialisons toute l'année sur l'exploitation et en expédition dans la France entière et plus, toute notre excellente viande de taureau (qui en aop taureau de Camargue et recommandé par les nutritionnistes, car pauvre en matière grasses saturé), terrines (plus de 25 différentes), plats préparé (comme la gardiane plat emblématique de Camargue, tripes, bolognaise de taureau avec beaucoup de viande...) charcuteries de taureau, jambon de taureau ...
                             Notre troupeau et en total liberté alimenté exclusivement de l'herbe de l'exploitation, des foins, luzernes et céréales que nous produisons.", contact: "les-delices-du-scamandre@gmail.com", user: user1)
eleveur_vache2.photos.attach(photos_vache2)
eleveur_vache2.save

eleveur_moutons = Producer.new(name: "Les bons Agneaux", address: "13530 Trets", producer_type: "Elevage de moutons",
                              description: "Situé dans les collines Tretsoise à une vingtaine de kilomètre d’Aix en Provence, notre élevage de mouton est né en 2009. Nous élevons des brebis de race Mérinos d’Arles. C’est un animal qui est bien adapté aux élevages extensifs tel que le notre.
                              Les moutons sont élevés dans la colline du Domaine de Grand Boise en système sylvo-pastoral. Ils mangent du thym, du romarin, de la fillaire, de l’aphyllante, de la garance mais aussi des glands à l’automne. C’est un élevage extensif, conduit en plein air dans la garrigue provençale.", contact: "les-bons-agneaux@gmail.com", user: user2)
eleveur_moutons.photos.attach(photos_moutons)
eleveur_moutons.save

eleveur_poulet = Producer.new(name: "La Poule de Crau", address: "Chemin du mas d'Espagne, 13430 Eyguières", producer_type: "Elevage de volailles",
                            description: "Située au pied des monts de Vaucluse, en plein cœur du Parc Naturel Régional du Luberon, notre exploitation agricole Poules & Co. est implantée sur une terre arborée de chênes verts dans un environnement calme. Retrouvez-nous Laura, Samantha et Manon. Nous avons choisi pour les poulets et les poules pondeuses, de produire selon le cahier des charges de l’agriculture biologique, le tout pour des produits de qualité.",
                            contact: "la-poule-de-crau@gmail.com", user: user2)
eleveur_poulet.photos.attach(photos_poulet)
eleveur_poulet.save

agriculteur = Producer.new(name: "Terre de Liens", address: "248 Chemin du Coupereau, 83320 Carqueiranne", producer_type: "Production de fruits et légumes",
                          description: "Production en plein-champs sur 6 hectares de fruits et de légumes de saison, en culture traditionnelle, dans la plaine des Aubes à Aubagne.
                          Notre production répond aux exigences du cahier des charges de la marque 'Les Jardins du Pays d'Aubagne'.
                          Nous produisons près de 50 espèces de fruits et légumes maraîchers avec des façons et techniques culturales héritées de nos ancêtres
                          que nous avons modernisées et adaptées à la demande actuelle.", contact: "terre-de-liens@gmail.com", user: user1)
agriculteur.photos.attach(photos_agriculteur)
agriculteur.save

pecheur = Producer.new(name: "Pierre et le Loup", address: "205 All. de la Petite Mer, 83500 La Seyne-sur-Mer", producer_type: "Elevage de poissons et fruits de mer",
                      description: "Tamaris Sud Fish situé à La Seyne-sur-Mer dans le Var assure la production de poissons. Les poissons grandissent dans leur milieu naturel, en pleine mer, pendant 2 ans, dans le respect de leur cycle de vie naturel préservant ainsi leur bien-être (repos en hiver). Ils sont sans parasite et ne subissent aucun traitement antibiotique.
                      La densité d'élevage est calculée entre le volume des cages et la charge en poissons (biomasse). Elle est au maximum de 25 kg/m³ afin que les poissons puissent nager en toute quiétude en se forgeant ainsi une morphologie parfaite.",
                      contact: "pierre-et-le-loup@gmail.com", user: user1)
pecheur.photos.attach(photos_poissons)
pecheur.save

pecheur2 = Producer.new(name: "Pisciculture MARIN", address: "1021 Rte d'Apt, 84800 L'Isle-sur-la-Sorgue", producer_type: "Elevage de poissons et fruits de mer",
                       description: "Les poissons sont nourris avec un aliment garanti sans OGM, sans antibiotique, avec des farines de poissons issus de la pêche durable. L’aliment est choisi soigneusement en fonction de sa composition et de sa provenance.
                       Selon le stade de développement, la quantité d’aliments donnée est adaptée. Nous veillons à respecter un temps de grossissement qui se veut le plus naturel possible, afin de produire un poisson non gras, avec une chair ferme de haute qualité.", contact: "pisciculture-marin@gmail.com", user: user1)
pecheur2.photos.attach(photos_poissons2)
pecheur2.save

lait = Producer.new(name: "Ferme Mistral", address: "800 chemin des cabans 13300 Salon-de-Provence", producer_type: "Production de produits laitiers",
                   description: "La Cabrouno, un élevage au naturel de vaches aux portes d’Aix-en-Provence !
                   Les vaches puisent dans les garrigues provençales la nourriture qui donne à leur lait et leurs fromages un goût aussi merveilleux…", contact: "ferme-mistral@gmail.com", user: user1)
lait.photos.attach(photos_lait)
lait.save

fromage = Producer.new(name: "La Fromagerie Magnaldi", address: "83740 La Cadière-d'Azur", producer_type: "Production de produits laitiers",
                       description: "La Fromagerie Magnaldi, installée à La Cadière-d’Azur dans le Var, vous présente ses spécialités de fromage. Nous possédons un troupeau de 150 chèvres qui portent toutes un prénom. Pour un fromage parfait, nous les sortons tous les jours dans la garrigue.
                       Nous travaillons en famille, chacun a son rôle. Notre fils Jérôme, est le spécialiste du fromage, il fabrique des tommes, de la crème fraiche, du beurre en certaines périodes.
                       Roger Magnaldi s’occupe des soins des animaux et de tous les agencements et réparations du matériel.
                       Christine Magnaldi sort le troupeau, aide à la fabrication des fromages et assure quelques marchés.
                       Notre belle fille Sandra vend également les fromages.", contact: "fromagerie-magnaldi@gmail.com", user: user1)
fromage.photos.attach(photos_fromage)
fromage.save

# markets
castellane_market = Market.new(name: "Marché du Prado", address: "99 Av. du Prado, 13008 Marseille", description: "Vaste marché en plein air proposant large choix d'articles, des produits frais aux vêtements d'occasion.")
castellane_market.save

plaine_market = Market.new(name: "Marché de la Plaine", address: "Pl. Jean Jaurès, 13001 Marseille", description: "Après presque 4 ans d’attente, le marché de la Plaine est de retour sur la place Jean-Jaurès. Les jours de marché seront les mardis, jeudis et samedis, comme avant les travaux.")
plaine_market.save

soleil_market = Market.new(name: "Marché Du Soleil", address: "5 Rue Fauchier, 13002 Marseille", description: "Il serait dommage de venir à Marseille sans un petit tour par le marché du soleil ! Dans cette ville géographiquement et historiquement proche de l'Afrique du Nord, c'est un véritable souk oriental que vous découvrirez avenue Camille Pelletan, près de la porte d'Aix. Epices, fruits et légumes, vêtements, objets de décoration… le dépaysement est total !")
soleil_market.save
