# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

tags = Faker::Lorem.words(30)
num_tags = [1, 2, 3]

10.times do
     Article.create(
        title: Faker::Lorem.sentence,
        text: Faker::Lorem.paragraph,
        tag_list: tags.sample(num_tags.sample(1)[0])
      )
end
