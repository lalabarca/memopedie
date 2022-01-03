# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Destroying memes and users..."
Meme.destroy_all
User.destroy_all

puts 'Creating user...'
user = User.create!(username: "lala", avatar: "https://ca.slack-edge.com/T02NE0241-U02JUUS8WFP-e7a25508f475-512",email: "lala@gmail.com", password: "123456")

puts 'Creating memes...'
Meme.create!(description: "travail taff dégouté grand mère", extern_link: "https://pbs.twimg.com/media/Ez_ggCuWEAIKdBN?format=jpg&name=900x900", format:"image", origin: "france", year: 2019, template: false, user: user)
Meme.create!(description: "femme blonde chat qui crie grimace pointer doigt", extern_link: "https://pbs.twimg.com/media/FGl023JWQAMMF_q?format=jpg&name=900x900", format:"image", origin: "international", template: false, user: user)
Meme.create!(description: "mec qui chuchote dans l’oreille fille club boîte discothèque indifférence", extern_link: "https://pbs.twimg.com/media/EoKLf5AUYAETHlZ?format=jpg&name=medium", format:"image", origin: "international", template: false, user: user)
Meme.create!(description: "2 gars dans une bus heureux triste paysage jumelles", extern_link: "https://res.cloudinary.com/dskz4h4td/image/upload/v1641215587/development/2-guys-on-a-bus_ldocug.jpg", format:"image", origin: "international", year: 2021, template: true, user: user)
Meme.create!(description: "3 spiderman se pointant du doigt", extern_link: "https://res.cloudinary.com/dskz4h4td/image/upload/v1641215587/development/3-Spider-man-pointing__mysp9c.jpg", format:"image", origin: "international", year: 2021, template: true, user: user)
Meme.create!(description: "alien dieu planete creature extra-terrestre", extern_link: "https://res.cloudinary.com/dskz4h4td/image/upload/v1641215587/development/Alien-god_ftmr1x.jpg", format:"image", origin: "international", template: true, user: user)
Meme.create!(description: "always has been astronaute planète terre pistolet", extern_link: "https://res.cloudinary.com/dskz4h4td/image/upload/v1641215587/development/always-has-been_bdoupe.jpg", format:"image", origin: "international", template: true, user: user)
Meme.create!(description: "top 10 des raccourcis inhumains mario kart", extern_link: "https://pbs.twimg.com/media/FG9sXzUWUAAo_Ge?format=jpg&name=medium", format:"image", origin: "france", year: 2019, template: false, user: user)
Meme.create!(description: "il a eu 0/20", extern_link: "https://pbs.twimg.com/media/FGuAOVPXsAUIsk1?format=jpg&name=medium", format:"image", origin: "france", template: false, user: user)

puts "Finished!"
