puts 'Cleaning database'
Request.destroy_all
Interest.destroy_all
UserInterest.destroy_all
User.destroy_all
puts 'Cleaning database done'

user1 = User.create!(email: "apolline@gmail.com", password: "totototo", first_name: "Apolline", last_name: "Sentucq")
user2 = User.create!(email: "augustin@gmail.com", password: "totototo", first_name: "Augustin", last_name: "Boju")
user3 = User.create!(email: "manon@gmail.com", password: "totototo", first_name: "Manon", last_name: "Chauvin")

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
