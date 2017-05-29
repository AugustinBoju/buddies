puts 'Cleaning database'
Request.destroy_all
UserInterest.destroy_all
Interest.destroy_all
User.destroy_all

puts 'Cleaning database done'
puts 'Creating users'
user0 = User.create!(email: "test@test.com",
  password: "totototo",
  first_name: "Test",
  last_name: "Test",
  age: 100,
  current_city: "Bordeaux",
  description: "Une très grande envie de voyager, de découvrir de nouvelles destinations et une nouvelle culture en compagnie d'une personne simple, flexible et sociable",
  picture: "david.jpg")
user1 = User.create!(email: "apolline@gmail.com",
  password: "totototo",
  first_name: "Apolline",
  last_name: "Sentucq",
  age: 28,
  current_city: "Sao Paulo",
  description: "Addict au sport, j'aime me défouler dans l'eau et / ou en rando, je recherche l'adrénaline avant tout et des compagnons de voyage dans ce même del de tarés mentaux :p",
  picture: "apo.jpeg")
user2 = User.create!(email: "augustin@gmail.com",
  password: "totototo",
  first_name: "Augustin",
  last_name: "Boju",
  age: 21,
  current_city: "Paris",
  description: "Je cherche un buddy pour m'accompagner dans la vie tout simplement :) <3",
  picture: "augustin.jpeg")
user3 = User.create!(email: "manon@gmail.com",
  password: "totototo",
  first_name: "Manon",
  last_name: "Chauvin",
  age: 24,
  current_city: "Berlin",
  description: "Après la découverte de l'Asie du sud-est et de l'Amérique du Sud j'ai envie de découvrir d'autres horizons. J'aime bien manger et j'aime l'humour.",
  picture: "manon.jpeg")
user4 = User.create!(email: "bertrand@gmail.com",
  password: "totototo",
  first_name: "Bertrand",
  last_name: "Bussac",
  age: 18,
  current_city: "Alger",
  description: "J'adore le wake. J'adore le surf. J'aime l'eau, l'océan, les rivières et les torrents.",
  picture: "bertrand.jpg")
user5 = User.create!(email: "sylvain@gmail.com",
 password: "totototo",
 first_name: "Sylvain",
 last_name: "Peigney",
 age: 45,
 current_city: "Palo Alto",
 description: "Je cherche surtout un buddy qui m'accompagnera dans mes descentes de bière, parce que la bière j'adore ça.",
 picture: "sylvain.png")
user6 = User.create!(email: "jonathan@gmail.com",
 password: "totototo",
 first_name: "Jonathan",
 last_name: "Serafini",
 age: 15,
 current_city: "Nouméa",
 description: "Je suis davantage attiré par les grands espaces, la nature, les randonnées. Mais si vous avez un fauteuil massant c'est un plus.",
 picture: "jo.jpg")
user7 = User.create!(email: "charles@gmail.com",
  password: "totototo",
  first_name: "Charles",
  last_name: "Pernet",
  age: 29,
  current_city: "Capo Verde",
  description: "Jaime le sport, j'aimerai surtout partir pour me lancer dans des activités à sensations fortes mais j'aimerai bien geeker parfois aussi.",
  picture: "charles.jpeg")
user8 = User.create!(email: "thomas@gmail.com",
  password: "totototo",
  first_name: "Thomas",
  last_name: "Naude",
  age: 20,
  current_city: "London",
  description: "Je parle anglais, espagnol, inuit, arabe, japonais et chti, je suis prêt à partir n'importe où avec n'importe qui.",
  picture: "thomas.png")
user9 = User.create!(email: "françois@gmail.com",
 password: "totototo",
 first_name: "François",
 last_name: "Catuhe",
 age: 50,
 current_city: "Dublin",
 description: "Peu importe la destination, si il y a le feeling je serai flexible, je cherche avant tout à vivre une expérience humaine loin de la société actuelle qui ronge mon âme.",
 picture: "françois.JPG")


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
