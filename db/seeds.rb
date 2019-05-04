require 'faker'

100.times do |i|
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
    gender: Faker::Gender.binary_type,
    breed: Faker::Creature::Dog.breed,
    registered: true,
    description: Faker::Lorem.paragraph(3),
    birthdate: Faker::Date.birthday(1, 13),
    papered: true,
    eyes: Faker::Color.color_name
  })
end
