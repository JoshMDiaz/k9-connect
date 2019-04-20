require 'faker'

10.times do |i|
  User.create({
    name: Faker::Name.name,
    email: Faker::Internet.email,
    address: Faker::Address.street_address,
    city: Faker::Address.city,
    zip: Faker::Address.zip
  })
  Dog.create({
    name: Faker::Name.first_name,
    user_id: i + 1,
    gender: i % 2 == 0 ? 'Male' : 'Female',
    breed: Faker::Creature::Dog.breed,
    registered: i % 3 == 0 ? true : false,
    description: Faker::Lorem.paragraph,
    birthdate: Faker::Date.birthday(1, 13),
    papered: i % 3 == 0 ? true : false
  })
end