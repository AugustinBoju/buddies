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
  description: "Je n'ai jamais voyagé et j'aimerai tenter cette aventure en compagnie d'une ou plusieurs personnes partageant les mêmes envies. Je ne suis pas très regardant sur la destination, partant pour n'importe quel continent !",
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
user10 = User.create!(email: "abdallah@gmail.com",
 password: "totototo",
 first_name: "Abdallah",
 last_name: "Chaib",
 age: 50,
 current_city: "Barcelone",
 description: "Peu importe la destination, si il y a le feeling je serai flexible, je cherche avant tout à vivre une expérience humaine loin de la société actuelle qui ronge mon âme.",
 picture: "abdallah.JPG")
user11 = User.create!(email: "adalberto@gmail.com",
 password: "totototo",
 first_name: "Adalberto",
 last_name: "Gonzalez",
 age: 50,
 current_city: "Cartagena",
 description: "Peu importe la destination, si il y a le feeling je serai flexible, je cherche avant tout à vivre une expérience humaine loin de la société actuelle qui ronge mon âme.",
 picture: "adalberto.JPG")
user12 = User.create!(email: "anthony@gmail.com",
 password: "totototo",
 first_name: "Anthony",
 last_name: "Larzillière",
 age: 50,
 current_city: "Nantes",
 description: "Peu importe la destination, si il y a le feeling je serai flexible, je cherche avant tout à vivre une expérience humaine loin de la société actuelle qui ronge mon âme.",
 picture: "anthony.JPG")
user13 = User.create!(email: "bastien@gmail.com",
 password: "totototo",
 first_name: "Bastien",
 last_name: "Pi",
 age: 50,
 current_city: "Marseille",
 description: "Peu importe la destination, si il y a le feeling je serai flexible, je cherche avant tout à vivre une expérience humaine loin de la société actuelle qui ronge mon âme.",
 picture: "bastien.JPG")
user14 = User.create!(email: "baturay@gmail.com",
 password: "totototo",
 first_name: "Baturay",
 last_name: "Alhaj",
 age: 50,
 current_city: "Toulouse",
 description: "Peu importe la destination, si il y a le feeling je serai flexible, je cherche avant tout à vivre une expérience humaine loin de la société actuelle qui ronge mon âme.",
 picture: "batu.JPG")
user15 = User.create!(email: "christian@gmail.com",
 password: "totototo",
 first_name: "Christian",
 last_name: "Villaescusa ",
 age: 50,
 current_city: "Strasbourg",
 description: "Peu importe la destination, si il y a le feeling je serai flexible, je cherche avant tout à vivre une expérience humaine loin de la société actuelle qui ronge mon âme.",
 picture: "christian.JPG")
user16 = User.create!(email: "louise@gmail.com",
 password: "totototo",
 first_name: "Louise",
 last_name: "Devilder",
 age: 50,
 current_city: "Rome",
 description: "Peu importe la destination, si il y a le feeling je serai flexible, je cherche avant tout à vivre une expérience humaine loin de la société actuelle qui ronge mon âme.",
 picture: "louise.JPG")
user17 = User.create!(email: "denis@gmail.com",
 password: "totototo",
 first_name: "Denis",
 last_name: "Giraud ",
 age: 50,
 current_city: "Bruxelles",
 description: "Peu importe la destination, si il y a le feeling je serai flexible, je cherche avant tout à vivre une expérience humaine loin de la société actuelle qui ronge mon âme.",
 picture: "denis.JPG")
user18 = User.create!(email: "florian@gmail.com",
 password: "totototo",
 first_name: "Florian",
 last_name: "Ruf",
 age: 50,
 current_city: "Melbourne",
 description: "Peu importe la destination, si il y a le feeling je serai flexible, je cherche avant tout à vivre une expérience humaine loin de la société actuelle qui ronge mon âme.",
 picture: "florian.JPG")
user19 = User.create!(email: "gilles@gmail.com",
 password: "totototo",
 first_name: "Gilles",
 last_name: "Aroutzet",
 age: 50,
 current_city: "Saintes",
 description: "Peu importe la destination, si il y a le feeling je serai flexible, je cherche avant tout à vivre une expérience humaine loin de la société actuelle qui ronge mon âme.",
 picture: "gilles.JPG")
user20 = User.create!(email: "gregory@gmail.com",
 password: "totototo",
 first_name: "Grégory",
 last_name: "Debargue",
 age: 50,
 current_city: "La Rochelle",
 description: "Peu importe la destination, si il y a le feeling je serai flexible, je cherche avant tout à vivre une expérience humaine loin de la société actuelle qui ronge mon âme.",
 picture: "gregory.JPG")


puts 'Creating interests...'

hiking = Interest.create!(name: "Hiking")
surf = Interest.create!(name: "Surf")
wildlife = Interest.create!(name: "Wild Life")
yoga = Interest.create!(name: "Yoga")
beach = Interest.create!(name: "Beach")
mountains = Interest.create!(name: "Mountains")
photography = Interest.create!(name: "Photography")
natural_park = Interest.create!(name: "Natural Park")
cities = Interest.create!(name: "Cities")
jungle = Interest.create!(name: "Jungle")
ocean = Interest.create!(name: "Ocean")
waterfall = Interest.create!(name: "Waterfalls")
spirituality = Interest.create!(name: "Spirituality")
bivouac = Interest.create!(name: "Bivouac")
canyon = Interest.create!(name: "Canyon")
roadtrip = Interest.create!(name: "Roadtrip")
snorkeling = Interest.create!(name: "Snorkelling")
stop = Interest.create!(name: "Hitchhike")


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
  {
    user_id: user9.id,
    interest_id: hiking.id
  },
  {
    user_id: user10.id,
    interest_id: surf.id
  },
  {
    user_id: user11.id,
    interest_id: wildlife.id
  },
  {
    user_id: user12.id,
    interest_id: yoga.id
  },
  {
    user_id: user13.id,
    interest_id: beach.id
  },
  {
    user_id: user14.id,
    interest_id: mountains.id
  },
  {
    user_id: user15.id,
    interest_id: photography.id
  },
  {
    user_id: user16.id,
    interest_id: natural_park.id
  },
  {
    user_id: user17.id,
    interest_id: hiking.id
  },
  {
    user_id: user18.id,
    interest_id: surf.id
  },
  {
    user_id: user19.id,
    interest_id: wildlife.id
  },
  {
    user_id: user20.id,
    interest_id: yoga.id
  },
]

UserInterest.create!(user_interests)
puts 'Seed finished'
