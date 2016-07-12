# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Category.destroy_all

all_categories = {
  title: [
    "Happy Camper",
    "Dewey Decimal",
    "The Whisper",
    "Megaphone",
    "Sharp Acid",
    "The Madea",
    "Carpe Diem",
    "Oliver Twist",
    "Caffeinator",
    "Incinerator",
    "Silly String",
    "The Finicky",
    "Guru",
    "Aljazeera",
    "Spiffy style",
    "Champagne",
    "Social butterfly",
    "The Sunrise",
    "The Melancholic",
    "Ironic Clown"
  ],
  desc: [
    "Someone who never fails to have a smile on his or her face",
    "Most Well Organized",
    "Someone whose voice is hardly heard",
    "Someone that you always hear",
    "Someone whose remarks are always marked by sarcasm",
    "Someone who is dramatic over everything and anything",
    "For making the most of every day",
    "Someone who wants more of everything (Good or Bad)",
    "For the employee who drinks most coffee in a day",
    "For being ready to eat and drink anything",
    "For being the office prankster",
    "For being particular about their things",
    "For always getting us out of a difficult situation",
    "Somone who is always up to date with events around the world (News man)",
    "For appearing dapper most times",
    "For most sparkling personality",
    "For constantly surfing and tweeting",
    "First to get to the office",
    "Someone who is difficult to tell when he's happy or sad",
    "Someone who thinks he's funny but he's not"
  ],
  imageUrl: [
    "http://res.cloudinary.com/kaybaba/image/upload/v1464776659/happy-camper_uzmukj.jpg",
    "http://res.cloudinary.com/kaybaba/image/upload/v1464776660/organized_znvzug.jpg",
    "http://res.cloudinary.com/kaybaba/image/upload/v1466896500/whisper_ajlvlw.jpg",
    "http://res.cloudinary.com/kaybaba/image/upload/v1466898785/megaphone_zxihbg.jpg",
    "http://res.cloudinary.com/kaybaba/image/upload/v1466898614/sarcasm_sypwig.jpg",
    "http://res.cloudinary.com/kaybaba/image/upload/v1464776660/dramatic_o8apy5.png",
    "http://res.cloudinary.com/kaybaba/image/upload/v1466894755/hardworker_myhcj3.jpg",
    "http://res.cloudinary.com/kaybaba/image/upload/v1464776661/oliver_w0tf2q.png",
    "http://res.cloudinary.com/kaybaba/image/upload/v1464776659/coffee-guy_f6ganj.jpg",
    "http://res.cloudinary.com/kaybaba/image/upload/v1466894755/incinerator_qfqwyj.jpg",
    "http://res.cloudinary.com/kaybaba/image/upload/v1464776661/silly_bt2v16.jpg",
    "http://res.cloudinary.com/kaybaba/image/upload/v1466894754/finicky-eater_e6h5bw.jpg",
    "http://res.cloudinary.com/kaybaba/image/upload/v1464776660/guru_kvfsbs.png",
    "http://res.cloudinary.com/kaybaba/image/upload/v1466899059/news_ffc9c2.jpg",
    "http://res.cloudinary.com/kaybaba/image/upload/v1466894754/dapper_tzqoog.jpg",
    "http://res.cloudinary.com/kaybaba/image/upload/v1466894759/personality_gxgqbw.jpg",
    "http://res.cloudinary.com/kaybaba/image/upload/v1466894756/social_butterfly_ik9i5w.jpg",
    "http://res.cloudinary.com/kaybaba/image/upload/v1466894754/sunrise_dv6rrc.jpg",
    "http://res.cloudinary.com/kaybaba/image/upload/v1464776659/face_po1lr5.jpg",
    "http://res.cloudinary.com/kaybaba/image/upload/v1464776659/not_funny_d7xttu.jpg"
  ]
}

all_categories[:title].length.times do |index|
  Category.create(title: all_categories[:title][index], short_description: all_categories[:desc][index], imageUrl: all_categories[:imageUrl][index])
end
