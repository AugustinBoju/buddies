puts 'Cleaning database'
Request.destroy_all
Interest.destroy_all
UserInterest.destroy_all
User.destroy_all
puts 'Cleaning database done'
puts 'Creating users'
user1 = User.create!(email: "apolline@gmail.com", password: "totototo", first_name: "Apolline", last_name: "Sentucq", age: 28, description: "Addict au sport, j'aime me défouler dans l'eau et / ou en rando, je recherche l'adrénaline avant tout et des compagnons de voyage dans ce même del de tarés mentaux :p")
user2 = User.create!(email: "augustin@gmail.com", password: "totototo", first_name: "Augustin", last_name: "Boju", age: 21, description: "Je cherche un buddy pour m'accompagner dans la vie tout simplement :) <3")
user3 = User.create!(email: "manon@gmail.com", password: "totototo", first_name: "Manon", last_name: "Chauvin", age: 24, description: "Après la découverte de l'Asie du sud-est et 4 voyages en Amérique du Sud j'ai envie de découvrir l'Australie et de maîtriser l'anglais et le surf à fond avec des buddies ma foi fort sympathiques")

puts 'Creating interests...'
interests = [
  {
    name: "Hiking"
    },
  {
    name: "Surf"
    },
  {
    name: "Nightlife"
    },
  {
    name: "Yoga"
    },
  {
    name: "Beach"
    },
  {
    name: "Moutains"
    },
  {
    name: "Photograpy"
    },
  {
    name: "Natural Parks"
    },
]

Interest.create!(interests)

puts 'Seed finished'
