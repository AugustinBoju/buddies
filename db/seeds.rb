puts 'Cleaning database'
Request.destroy_all
UserInterest.destroy_all
Interest.destroy_all
User.destroy_all

puts 'Cleaning database done'
puts 'Creating users'
user0 = User.create!(email: "test@test.com", password: "totototo", first_name: "Test", last_name: "Test", age: 100, current_city: "Bordeaux", description: "Addict au sport, j'aime me défouler dans l'eau et / ou en rando, je recherche l'adrénaline avant tout et des compagnons de voyage dans ce même del de tarés mentaux :p")
user1 = User.create!(email: "apolline@gmail.com", password: "totototo", first_name: "Apolline", last_name: "Sentucq", age: 28, current_city: "Sao Paulo", description: "Addict au sport, j'aime me défouler dans l'eau et / ou en rando, je recherche l'adrénaline avant tout et des compagnons de voyage dans ce même del de tarés mentaux :p")
user2 = User.create!(email: "augustin@gmail.com", password: "totototo", first_name: "Augustin", last_name: "Boju", age: 21, current_city: "Paris", description: "Je cherche un buddy pour m'accompagner dans la vie tout simplement :) <3")
user3 = User.create!(email: "manon@gmail.com", password: "totototo", first_name: "Manon", last_name: "Chauvin", age: 24, current_city: "Berlin", description: "Après la découverte de l'Asie du sud-est et 4 voyages en Amérique du Sud j'ai envie de découvrir l'Australie et de maîtriser l'anglais et le surf à fond avec des buddies ma foi fort sympathiques")
user4 = User.create!(email: "bertrand@gmail.com", password: "totototo", first_name: "Bertrand", last_name: "Wagon", age: 18, current_city: "Alger", description: "Après la découverte de l'Asie du sud-est et 4 voyages en Amérique du Sud j'ai envie de découvrir l'Australie et de maîtriser l'anglais et le surf à fond avec des buddies ma foi fort sympathiques")
user5 = User.create!(email: "sylvain@gmail.com", password: "totototo", first_name: "Sylvain", last_name: "Wagon", age: 45, current_city: "Palo Alto", description: "Après la découverte de l'Asie du sud-est et 4 voyages en Amérique du Sud j'ai envie de découvrir l'Australie et de maîtriser l'anglais et le surf à fond avec des buddies ma foi fort sympathiques")
user6 = User.create!(email: "jonathan@gmail.com", password: "totototo", first_name: "Jonathan", last_name: "Serafini", age: 15, current_city: "Nouméa", description: "Après la découverte de l'Asie du sud-est et 4 voyages en Amérique du Sud j'ai envie de découvrir l'Australie et de maîtriser l'anglais et le surf à fond avec des buddies ma foi fort sympathiques")
user7 = User.create!(email: "charles@gmail.com", password: "totototo", first_name: "Charles", last_name: "Pernet", age: 29, current_city: "Capo Verde", description: "Après la découverte de l'Asie du sud-est et 4 voyages en Amérique du Sud j'ai envie de découvrir l'Australie et de maîtriser l'anglais et le surf à fond avec des buddies ma foi fort sympathiques")
user8 = User.create!(email: "thomas@gmail.com", password: "totototo", first_name: "Thomas", last_name: "Naude", age: 20, current_city: "London", description: "Après la découverte de l'Asie du sud-est et 4 voyages en Amérique du Sud j'ai envie de découvrir l'Australie et de maîtriser l'anglais et le surf à fond avec des buddies ma foi fort sympathiques")
user9 = User.create!(email: "françois@gmail.com", password: "totototo", first_name: "François", last_name: "Catuhe", age: 50, current_city: "Dublin", description: "Après la découverte de l'Asie du sud-est et 4 voyages en Amérique du Sud j'ai envie de découvrir l'Australie et de maîtriser l'anglais et le surf à fond avec des buddies ma foi fort sympathiques")


puts 'Creating interests...'

hiking = Interest.create!(name: "Hiking")
surf = Interest.create!(name: "Surf")
wildlife = Interest.create!(name: "Wild Life")
yoga = Interest.create!(name: "Yoga")
beach = Interest.create!(name: "Beach")
mountains = Interest.create!(name: "Mountains")
photography = Interest.create!(name: "Photography")
natural_park = Interest.create!(name: "Natural Park")

puts 'Creating users interests'

user_interests = [
  {
    user_id: user0.id,
    interest_id: hiking.id
  },
  {
    user_id: user0.id,
    interest_id: surf.id
  },
  {
    user_id: user0.id,
    interest_id: wildlife.id
  },
  {
    user_id: user0.id,
    interest_id: yoga.id
  },
  {
    user_id: user0.id,
    interest_id: beach.id
  },
  {
    user_id: user0.id,
    interest_id: mountains.id
  },
  {
    user_id: user0.id,
    interest_id: photography.id
  },
  {
    user_id: user0.id,
    interest_id: natural_park.id
  },

  {
    user_id: user1.id,
    interest_id: hiking.id
  },
  {
    user_id: user2.id,
    interest_id: surf.id
  },
  {
    user_id: user3.id,
    interest_id: wildlife.id
  },
  {
    user_id: user4.id,
    interest_id: yoga.id
  },
  {
    user_id: user5.id,
    interest_id: beach.id
  },
  {
    user_id: user6.id,
    interest_id: mountains.id
  },
  {
    user_id: user7.id,
    interest_id: photography.id
  },
  {
    user_id: user8.id,
    interest_id: natural_park.id
  },
]

UserInterest.create!(user_interests)
puts 'Seed finished'
