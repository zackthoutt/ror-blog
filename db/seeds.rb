# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

tags = Faker::Lorem.words(50)
num_tags = [2, 3]

5.times do
     Article.create(
        title: Faker::Lorem.sentence,
        blurb: Faker::Lorem.paragraph(5),
        text: Faker::Lorem.paragraphs(15).join("\n"),
        tag_list: tags.sample(num_tags.sample(1)[0]),
      )
end
