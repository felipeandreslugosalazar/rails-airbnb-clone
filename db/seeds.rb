require "faker"
require "open-uri"

puts "Cleaning BOOKINGs database..."
Booking.destroy_all
puts "Cleaning LOOKALIKEs database..."
Lookalike.destroy_all
puts "Cleaning USERs database..."
User.destroy_all

# =========================================================
# USER SEED
User.create(email: "testuser@fakemail.com", password: "123456")
User.create(email: "felipe@lewagon.de", password: "123456")
User.create(email: "peter@lewagon.de", password: "123456")
User.create(email: "paul@lewagon.de", password: "123456")
User.create(email: "vincent@lewagon.de", password: "123456")
User.create(email: "admin@lewagon.de", password: "123456")
puts "USERs seeded!"
# =========================================================

# =========================================================
# LOOKALIKE SEED

# 1.times do
#   # generic
#   celeb_name = Faker::FunnyName.two_word_name
#   description = Faker::Movies::Ghostbusters.quote
#   price_pool = [10, 20, 30, 40, 50, 60, 70, 80, 90, 100]
#   price = price_pool.sample
#   user_id = rand(1..5)

#   file = URI.open("https://res.cloudinary.com/dmpocwizs/image/upload/v1596557904/0v1x33idhr41djcfzr0oyx9eyhhw.png")

#   lookalike_test = Lookalike.new(celeb_name: celeb_name, description: description, price: price, user_id: user_id)
#   lookalike_test.photo.attach(io: file, filename: "photo.png", content_type: "image/png")
#   lookalike_test.save
# end
price_pool = [10, 20, 30, 40, 50, 60, 70, 80, 90, 100]
user_pool = User.all
user_pool_id = []
user_pool.each do |user|
  user_pool_id << user.id
end

# Scarlett Johansson
celeb_name = "Scarlett Johansson"
description = "Scarlett Johansson was born in New York City. Her mother, Melanie Sloan, is from a Jewish family from the Bronx, and her father, Karsten Johansson, is a Danish-born architect, from Copenhagen. She has a sister, Vanessa Johansson, who is also an actress, a brother, Adrian, a twin brother, Hunter Johansson, born three minutes after her, and a paternal half-brother, Christian. Her grandfather was writer Ejner Johansson."
price = price_pool.sample
user_id = user_pool_id.sample

file = URI.open("https://m.media-amazon.com/images/M/MV5BMTM3OTUwMDYwNl5BMl5BanBnXkFtZTcwNTUyNzc3Nw@@._V1_SY1000_CR0,0,824,1000_AL_.jpg")

lookalike1 = Lookalike.new(celeb_name: celeb_name, description: description, price: price, user_id: user_id)
lookalike1.photo.attach(io: file, filename: "lookalike1.png", content_type: "image/png")
lookalike1.save

# Gal Gadot
celeb_name = "Gal Gadot"
description = "Gal Gadot is an Israeli actress, singer, martial artist, and model. She was born in Rosh Ha'ayin, Israel, to a Jewish family. Her parents are Irit, a teacher, and Michael, an engineer, who is a sixth-generation Israeli. She served in the IDF for two years, and won the Miss Israel title in 2004."
price = price_pool.sample
user_id = user_pool_id.sample

file = URI.open("https://m.media-amazon.com/images/M/MV5BMjUzZTJmZDItODRjYS00ZGRhLTg2NWQtOGE0YjJhNWVlMjNjXkEyXkFqcGdeQXVyMTg4NDI0NDM@._V1_.jpg")

lookalike2 = Lookalike.new(celeb_name: celeb_name, description: description, price: price, user_id: user_id)
lookalike2.photo.attach(io: file, filename: "lookalike2.png", content_type: "image/png")
lookalike2.save

# Jessica Alba
celeb_name = "Jessica Alba"
description = "Jessica Marie Alba was born on April 28, 1981, in Pomona, CA, to Catherine (Jensen) and Mark David Alba, who served in the US Air Force. Her father is of Mexican descent (including Spanish and Indigenous Mexican roots), and her mother has Danish, Welsh, English, and French ancestry. Her family moved to Biloxi, MS, when she was an infant. Three years later her father's career brought the family back to California, then to Del Rio, TX, before finally settling in Southern California when Jessica was nine. In love with the idea of becoming an actress from the age of five, she was 12 before she took her first acting class. Nine months later she was signed by an agent. She studied at the Atlantic Theatre Company with founders William H. Macy and David Mamet."
price = price_pool.sample
user_id = user_pool_id.sample

file = URI.open("https://m.media-amazon.com/images/M/MV5BODYxNzE4OTk5Nl5BMl5BanBnXkFtZTcwODYyMDYzMw@@._V1_.jpg")

lookalike3 = Lookalike.new(celeb_name: celeb_name, description: description, price: price, user_id: user_id)
lookalike3.photo.attach(io: file, filename: "lookalike4.png", content_type: "image/png")
lookalike3.save

# Korean Elvis
celeb_name = "Korean Elvis"
description = "Korean Elvis was at the karaoke bar, in Nothing Good Happens After 2 A.M..
  Barney introduced Lily and Marshall to Korean Elvis to prove good things do happen after 2 am. He failed, as Korean Elvis says something to Lily causing her to kick him in the gonads, after he serenades her, meaning that he is ultimately not a good thing. Ted's apparent knowledge of him based on his knowing who had taken Marshall's phone, can be explained by the fact that Barney and/or Marshall could have taken him there, and introduced him to Korean Elvis."
price = price_pool.sample
user_id = user_pool_id.sample

file = URI.open("https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.SX3N1yNMinypxzrwnT3YLAHaFj%26pid%3DApi&f=1")

lookalike4 = Lookalike.new(celeb_name: celeb_name, description: description, price: price, user_id: user_id)
lookalike4.photo.attach(io: file, filename: "lookalike4.png", content_type: "image/png")
lookalike4.save

# Tupac Shakur
celeb_name = "Tupac Shakur"
description = "Born in New York City, Tupac grew up primarily in Harlem. In 1984, his family moved to Baltimore, Maryland where he became good friends with Jada Pinkett Smith. His family moved again in 1988 to Oakland, California. His first breakthrough in music came in 1991 as a member of the group Digital Underground. In the same year he received individual recognition for last album, but this album was also the beginning of his notoriety as a leading figure of the gangster permutation of hip-hop, with references to cop killing and sexual violence. His solo movie career also began in this year with Juice (1992), and in 1992 he co-starred with Janet Jackson in Poetic Justice (1993)"
price = price_pool.sample
user_id = user_pool_id.sample

file = URI.open("https://m.media-amazon.com/images/M/MV5BMTMwMTE2ODk0NV5BMl5BanBnXkFtZTYwMTE5MzQ3._V1_.jpg")

lookalike5 = Lookalike.new(celeb_name: celeb_name, description: description, price: price, user_id: user_id)
lookalike5.photo.attach(io: file, filename: "lookalike5.png", content_type: "image/png")
lookalike5.save

# =========================================================

puts "LOOKALIKEs seeded!"
# # =========================================================

# # =========================================================
# BOOKING SEED

15.times do
  date = Faker::Date.between(from: "2020-08-01", to: "2020-08-31")

  user_pool = User.all
  lookalike = Lookalike.all

  user_pool_id = []
  user_pool.each do |user|
    user_pool_id << user.id
  end

  lookalike_pool_id = []
  lookalike.each do |lookalike|
    lookalike_pool_id << lookalike.id
  end

  user_id = user_pool_id.sample
  lookalike_id = lookalike_pool_id.sample
  # rating = rating: this is not needeD  now!!!
  Booking.create(date: date, user_id: user_id, lookalike_id: lookalike_id)
end
puts "BOOKINGs seeded!"
# # =========================================================
