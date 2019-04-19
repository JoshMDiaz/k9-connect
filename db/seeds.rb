10.times do |i|
  User.create({
    name: "Test Name #{i + 1}",
    email: "test#{i + 1}@test.com",
    address: "123#{i + 1} Test Street",
    city: "Lehi",
    zip: "8404#{i + 2}"
  })
end