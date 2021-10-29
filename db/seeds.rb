# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
10.times do 
    city = City.create!(
        name:Faker::Address.city,
        zip_code:Faker::Address.zip_code
    )
end

10.times do 
    user = User.create!(
        first_name:Faker::Name.first_name, 
        last_name:Faker::Name.last_name, 
        email:Faker::Internet.email,
        age:Faker::Number.within(range: 15..50),
        description:Faker::Lorem.multibyte,
        city:City.all.sample
    )

end

20.times do 
    tweet = Tweet.create(
        title:Faker::Company.name,
        content:Faker::Lorem.paragraphs
    )
end

10.times do
    tag = Tag.create!(
        title:Faker::Company.name
    )
end

# john = User.create
# alex = User.create
# PrivateMessage.new = "salut sa vas ?"
# "salut sa vas ?".sender = alex 
# "salut sa vas ?".recipient = john 