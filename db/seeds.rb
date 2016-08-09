# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do
  adjective = Faker::Hacker.adjective
  noun = Faker::Hacker.noun
  verb = Faker::Hacker.verb
  ingverb = Faker::Hacker.ingverb
  company = Faker::Company.name
  par = Faker::Lorem.paragraph(9)
  pars = Faker::Lorem.paragraph(18)
  img = "https://source.unsplash.com/random/700x200"
  name = adjective + " " + noun + " " + verb + (" the " || " a ") + noun
  content = par + img + pars
  article = Article.new(name: name, content: content)
end
