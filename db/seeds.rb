# seeds updated
require "open-uri"
require "faker"

puts "Cleaning BOOKINGs database..."
Booking.destroy_all
puts "Cleaning LOOKALIKEs database..."
Lookalike.destroy_all
puts "Cleaning USERs database..."
User.destroy_all

# =========================================================
# USER SEED
puts "Starting USERs seed!"
User.create(email: "peter@celebnb.wow", password: "123456")
User.create(email: "paul@celebnb.wow", password: "123456")
User.create(email: "vincent@celebnb.wow", password: "123456")
User.create(email: "admin@celebnb.wow", password: "123456")
User.create(email: "felipe@celebnb.wow", password: "123456")
puts "USERs seeded!"
# =========================================================

# =========================================================
# LOOKALIKE SEED
puts "Starting LOOKALIKEs seed!"

price_pool = [10, 20, 30, 40, 50, 60, 70, 80, 90, 100]
user_pool = User.all
user_pool_id = []
user_pool.each do |user|
  user_pool_id << user.id
end

lookalikes = [
  {
    "celeb_name": "Scarlett Johansson",
    "description": "Scarlett Johansson was born in New York City. Her mother, Melanie Sloan, is from a Jewish family from the Bronx, and her father, Karsten Johansson, is a Danish-born architect, from Copenhagen. She has a sister, Vanessa Johansson, who is also an actress, a brother, Adrian, a twin brother, Hunter Johansson, born three minutes after her, and a paternal half-brother, Christian. Her grandfather was writer Ejner Johansson.",
    "price": price_pool.sample,
    "user_id": user_pool_id.sample,
    "profile_pic": URI.open("https://m.media-amazon.com/images/M/MV5BMTM3OTUwMDYwNl5BMl5BanBnXkFtZTcwNTUyNzc3Nw@@._V1_SY1000_CR0,0,824,1000_AL_.jpg"),
  },
  {
    "celeb_name": "Gal Gadot",
    "description": "Gal Gadot is an Israeli actress, singer, martial artist, and model. She was born in Rosh Ha'ayin, Israel, to a Jewish family. Her parents are Irit, a teacher, and Michael, an engineer, who is a sixth-generation Israeli. She served in the IDF for two years, and won the Miss Israel title in 2004.",
    "price": price_pool.sample,
    "user_id": user_pool_id.sample,
    "profile_pic": URI.open("https://m.media-amazon.com/images/M/MV5BMjUzZTJmZDItODRjYS00ZGRhLTg2NWQtOGE0YjJhNWVlMjNjXkEyXkFqcGdeQXVyMTg4NDI0NDM@._V1_.jpg"),
  },
  {
    "celeb_name": "Jessica Alba",
    "description": "Jessica Marie Alba was born on April 28, 1981, in Pomona, CA, to Catherine (Jensen) and Mark David Alba, who served in the US Air Force. Her father is of Mexican descent (including Spanish and Indigenous Mexican roots), and her mother has Danish, Welsh, English, and French ancestry. Her family moved to Biloxi, MS, when she was an infant. Three years later her father's career brought the family back to California, then to Del Rio, TX, before finally settling in Southern California when Jessica was nine. In love with the idea of becoming an actress from the age of five, she was 12 before she took her first acting class. Nine months later she was signed by an agent. She studied at the Atlantic Theatre Company with founders William H. Macy and David Mamet.",
    "price": price_pool.sample,
    "user_id": user_pool_id.sample,
    "profile_pic": URI.open("https://m.media-amazon.com/images/M/MV5BODYxNzE4OTk5Nl5BMl5BanBnXkFtZTcwODYyMDYzMw@@._V1_.jpg"),
  },
  {
    "celeb_name": "Tupac Shakur",
    "description": "Born in New York City, Tupac grew up primarily in Harlem. In 1984, his family moved to Baltimore, Maryland where he became good friends with Jada Pinkett Smith. His family moved again in 1988 to Oakland, California. His first breakthrough in music came in 1991 as a member of the group Digital Underground. In the same year he received individual recognition for last album, but this album was also the beginning of his notoriety as a leading figure of the gangster permutation of hip-hop, with references to cop killing and sexual violence. His solo movie career also began in this year with Juice (1992), and in 1992 he co-starred with Janet Jackson in Poetic Justice (1993).",
    "price": price_pool.sample,
    "user_id": user_pool_id.sample,
    "profile_pic": URI.open("https://m.media-amazon.com/images/M/MV5BMTMwMTE2ODk0NV5BMl5BanBnXkFtZTYwMTE5MzQ3._V1_.jpg"),
  },
  {
    "celeb_name": "Zac Efron",
    "description": "Zachary David Alexander Efron was born October 18, 1987 in San Luis Obispo, California, to Starla Baskett, a secretary, and David Efron, an electrical engineer. He has a younger brother, Dylan. The surname Efron, which is Hebrew and a Biblical place name, comes from Zac's Polish Jewish paternal grandfather.",
    "price": price_pool.sample,
    "user_id": user_pool_id.sample,
    "profile_pic": URI.open("https://m.media-amazon.com/images/M/MV5BMTUxNzY3NzYwOV5BMl5BanBnXkFtZTgwNzQ3Mzc4MTI@._V1_SY1000_CR0,0,666,1000_AL_.jpg"),
  },
  {
    "celeb_name": "Miley Cyrus",
    "description": "Miley Cyrus was born in Franklin, Tennessee, the daughter of country singer Billy Ray Cyrus and his wife, Letitia Jean Tish (Finley). She has five siblings - two half-brothers, a half-sister, and a younger brother and sister. Her birth name is Destiny Hope Cyrus, because her parents hoped she would achieve greatness. Her childhood nickname, Smiley, due to her cheerful disposition, was eventually shortened to Miley. Her paternal grandfather was Democratic politician Ron Cyrus.",
    "price": price_pool.sample,
    "user_id": user_pool_id.sample,
    "profile_pic": URI.open("https://m.media-amazon.com/images/M/MV5BMTc3MzE1MzcxNl5BMl5BanBnXkFtZTcwNTM1MTA2OA@@._V1_SY1000_CR0,0,705,1000_AL_.jpg"),
  },
  {
    "celeb_name": "Emma Watson",
    "description": "Emma Charlotte Duerre Watson was born in Paris, France, to English parents, Jacqueline Luesby and Chris Watson, both lawyers. She moved to Oxfordshire when she was five, where she attended the Dragon School. From the age of six, Emma knew that she wanted to be an actress and, for a number of years, she trained at the Oxford branch of Stagecoach Theatre Arts, a part-time theatre school where she studied singing, dancing and acting. By the age of ten, she had performed and taken the lead in various Stagecoach productions and school plays.",
    "price": price_pool.sample,
    "user_id": user_pool_id.sample,
    "profile_pic": URI.open("https://m.media-amazon.com/images/M/MV5BMTQ3ODE2NTMxMV5BMl5BanBnXkFtZTgwOTIzOTQzMjE@._V1_SY1000_CR0,0,810,1000_AL_.jpg"),
  },
  {
    "celeb_name": "Tom Cruise",
    "description": "Tom is the only son (among four children) of nomadic parents, Mary Lee (Pfeiffer), a special education teacher, and Thomas Cruise Mapother III, an electrical engineer. His parents were both from Louisville, Kentucky, and he has German, Irish, and English ancestry. Young Tom spent his boyhood always on the move, and by the time he was 14 he had attended 15 different schools in the U.S. and Canada. He finally settled in Glen Ridge, New Jersey with his mother and her new husband. While in high school, Tom wanted to become a priest but pretty soon he developed an interest in acting and abandoned his plans of becoming a priest, dropped out of school, and at age 18 headed for New York and a possible acting career. The next 15 years of his life are the stuff of legends. He made his film debut with a small part in Endless Love (1981) and from the outset exhibited an undeniable box office appeal to both male and female audiences.",
    "price": price_pool.sample,
    "user_id": user_pool_id.sample,
    "profile_pic": URI.open("https://m.media-amazon.com/images/M/MV5BMTk1MjM3NTU5M15BMl5BanBnXkFtZTcwMTMyMjAyMg@@._V1_.jpg"),
  },
  {
    "celeb_name": "Saoirse Ronan",
    "description": "Saoirse Una Ronan was born in The Bronx, New York City, New York, United States, to Irish parents, Monica Ronan (née Brennan) and Paul Ronan, an actor. When Saoirse was three, the family moved back to Dublin, Ireland. Saoirse grew up in Dublin and briefly in Co. Carlow before moving back to Dublin with her parents.",
    "price": price_pool.sample,
    "user_id": user_pool_id.sample,
    "profile_pic": URI.open("https://m.media-amazon.com/images/M/MV5BMjExNTM5NDE4NV5BMl5BanBnXkFtZTcwNzczMzEzOQ@@._V1_SY1000_CR0,0,664,1000_AL_.jpg"),
  },
  {
    "celeb_name": "Christian Bale",
    "description": "Christian Charles Philip Bale was born in Pembrokeshire, Wales, UK on January 30, 1974, to English parents Jennifer Jenny (James) and David Bale. His mother was a circus performer and his father, who was born in South Africa, was a commercial pilot. The family lived in different countries throughout Bale's childhood, including England, Portugal, and the United States. Bale acknowledges the constant change was one of the influences on his career choice.",
    "price": price_pool.sample,
    "user_id": user_pool_id.sample,
    "profile_pic": URI.open("https://m.media-amazon.com/images/M/MV5BMTkxMzk4MjQ4MF5BMl5BanBnXkFtZTcwMzExODQxOA@@._V1_SY1000_CR0,0,665,1000_AL_.jpg"),
  },
  {
    "celeb_name": "Dieter Bohlen",
    "description": "Dieter Bohlen was born on February 7, 1954 in Berne, Lower Saxony, Germany as Dieter Günther Bohlen. He is a composer, known for Deutschland sucht den Superstar (2002), Arjun Reddy (2017) and Daniel the Wizard (2004). He was previously married to Verona Pooth and Erika Sauerland.",
    "price": price_pool.sample,
    "user_id": user_pool_id.sample,
    "profile_pic": URI.open("https://m.media-amazon.com/images/M/MV5BODliNTQ3MjUtN2U1Yi00NGFhLTljNjctYzYwNWRiYWU2MGMwXkEyXkFqcGdeQXVyMjUyNDk2ODc@._V1_.jpg"),
  },
  {
    "celeb_name": "Ed Sheeran",
    "description": "Ed Sheeran was born on February 17, 1991 in Yorkshire, England as Edward Christopher Sheeran. He has been married to Cherry Seaborn since December 2018.",
    "price": price_pool.sample,
    "user_id": user_pool_id.sample,
    "profile_pic": URI.open("https://m.media-amazon.com/images/M/MV5BODI4NTkxOTkxMV5BMl5BanBnXkFtZTgwMzE0MDEzMTE@._V1_SY1000_CR0,0,666,1000_AL_.jpg"),
  },
  {
    "celeb_name": "Andrea Berg",
    "description": "Andrea Berg was born on January 28, 1966 in Krefeld, Germany. She has been married to Ulrich Ferber since 2007. She was previously married to Olaf Henning.",
    "price": price_pool.sample,
    "user_id": user_pool_id.sample,
    "profile_pic": URI.open("https://m.media-amazon.com/images/M/MV5BMjE3NjE0NjQ5Nl5BMl5BanBnXkFtZTcwMzkwMTA4NA@@._V1_SY1000_CR0,0,620,1000_AL_.jpg"),
  },
  {
    "celeb_name": "Oliver Pocher",
    "description": "Pocher is the son of Gerhard and Jutta Pocher; he was born and grew up in Hanover, West Germany. His parents are Jehovah's Witnesses and he too was raised as one. In 2007, Pocher stated that, unlike his parents, he had no contact with the organization anymore as he claimed not to have agreed with their rules.[2]",
    "price": price_pool.sample,
    "user_id": user_pool_id.sample,
    "profile_pic": URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/7/7a/Oliver-Pocher-foto.jpg/800px-Oliver-Pocher-foto.jpg"),
  },
  {
    "celeb_name": "Apache 207",
    "description": "Volkan Yaman (born 23 October 1997), known professionally as Apache 207, is a German rapper of Turkish descent[1] from Ludwigshafen. He became best known for his breakthrough hit Roller in August 2019, which would be the first of several more Top 10 hits.",
    "price": price_pool.sample,
    "user_id": user_pool_id.sample,
    "profile_pic": URI.open("https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fi.ytimg.com%2Fvi%2F6Wm4c4N1zm0%2Fmaxresdefault.jpg&f=1&nofb=1"),
  },
  {
    "celeb_name": "Will Smith",
    "description": "Willard Carroll Will Smith, Jr. (born September 25, 1968) is an American actor, comedian, producer, rapper, and songwriter. He has enjoyed success in television, film, and music. In April 2007, Newsweek called him the most powerful actor in Hollywood. Smith has been nominated for five Golden Globe Awards, two Academy Awards, and has won four Grammy Awards.",
    "price": price_pool.sample,
    "user_id": user_pool_id.sample,
    "profile_pic": URI.open("https://m.media-amazon.com/images/M/MV5BNTczMzk1MjU1MV5BMl5BanBnXkFtZTcwNDk2MzAyMg@@._V1_.jpg"),
  },
  {
    "celeb_name": "Natalie Portman",
    "description": "Natalie was born Natalie Hershlag on June 9, 1981, in Jerusalem, Israel. She is the only child of Avner Hershlag, a Israeli-born doctor, and Shelley Stevens, an American-born artist (from Cincinnati, Ohio), who also acts as Natalie's agent. Her parents are both of Ashkenazi Jewish descent. Natalie's family left Israel for Washington, D.C., when she was still very young. After a few more moves, her family finally settled in New York, where she still lives to this day. She graduated with honors, and her academic achievements allowed her to attend Harvard University. She was discovered by an agent in a pizza parlor at the age of 11. She was pushed towards a career in modeling but she decided that she would rather pursue a career in acting.",
    "price": price_pool.sample,
    "user_id": user_pool_id.sample,
    "profile_pic": URI.open("https://m.media-amazon.com/images/M/MV5BMTQ3ODE3Mjg1NV5BMl5BanBnXkFtZTcwNzA4ODcxNA@@._V1_SY1000_SX746_AL_.jpg"),
  },

]

lookalikes.each do |lookalike|
  seed = Lookalike.new(celeb_name: lookalike[:celeb_name], description: lookalike[:description], price: lookalike[:price], user_id: lookalike[:user_id])
  seed.photo.attach(io: lookalike[:profile_pic], filename: "seed.png", content_type: "image/png")
  seed.save
end

puts "LOOKALIKEs seeded!"
# =========================================================

# =========================================================
puts "Starting BOOKINGs seed!"

15.times do
  date = Faker::Date.between(from: "2020-08-01", to: "2020-08-31")

  user_pool = User.all
  lookalike_pool = Lookalike.all

  user_pool_id = []
  user_pool.each do |user|
    user_pool_id << user.id
  end

  lookalike_pool_id = []
  lookalike_pool.each do |lookalike|
    lookalike_pool_id << lookalike.id
  end

  user_id = user_pool_id.sample
  lookalike_id = lookalike_pool_id.sample
  # rating = rating: this is not needeD  now!!!
  Booking.create(date: date, user_id: user_id, lookalike_id: lookalike_id)
end
puts "BOOKINGs seeded!"
# =========================================================
