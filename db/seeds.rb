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
Meme.create!(description: "2 gars dans une bus heureux triste paysage jumelles", extern_link: "https://drive.google.com/file/d/1Zgrz-B5qAv-2fZggnlFFS4PUzSTYVjsD/view", format:"image", origin: "international", year: 2021, template: true, user: user)
Meme.create!(description: "3 spiderman se pointant du doigt", extern_link: "https://drive.google.com/file/d/1G3AMK_6scnLAMyEad1L-63MPbj2RtzpL/view", format:"image", origin: "international", year: 2021, template: true, user: user)
Meme.create!(description: "alien dieu planete creature extra-terrestre", extern_link: "https://drive.google.com/file/d/1W-IX88ueDWhQn_sN65cSwbK2zx_red4-/view", format:"image", origin: "international", template: true, user: user)
Meme.create!(description: "always has been astronaute planète terre pistolet", extern_link: "https://drive.google.com/file/d/1fqqtYQzsvBdC5_w318Real4XSuNXwaYp/view", format:"image", origin: "international", template: true, user: user)
Meme.create!(description: "top 10 des raccourcis inhumains mario kart", extern_link: "https://pbs.twimg.com/media/FG9sXzUWUAAo_Ge?format=jpg&name=medium", format:"image", origin: "france", year: 2019, template: false, user: user)
Meme.create!(description: "il a eu 0/20", extern_link: "https://pbs.twimg.com/media/FGuAOVPXsAUIsk1?format=jpg&name=medium", format:"image", origin: "france", template: false, user: user)

puts "Finished!"
