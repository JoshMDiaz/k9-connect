require 'faker'

breeds = [
  "Affenpinscher",
  "Afghan Hound",
  "African Hunting Dog",
  "Airedale Terrier",
  "Akbash Dog",
  "Akita",
  "Alapaha Blue Blood Bulldog",
  "Alaskan Husky",
  "Alaskan Malamute",
  "American Bulldog",
  "American Bully",
  "American Eskimo Dog",
  "American Eskimo Dog (Miniature)",
  "American Foxhound",
  "American Pit Bull Terrier",
  "American Staffordshire Terrier",
  "American Water Spaniel",
  "Anatolian Shepherd Dog",
  "Appenzeller Sennenhund",
  "Australian Cattle Dog",
  "Australian Kelpie",
  "Australian Shepherd",
  "Australian Terrier",
  "Azawakh",
  "Barbet",
  "Basenji",
  "Basset Bleu de Gascogne",
  "Basset Hound",
  "Beagle",
  "Bearded Collie",
  "Beauceron",
  "Bedlington Terrier",
  "Belgian Malinois",
  "Belgian Tervuren",
  "Bernese Mountain Dog",
  "Bichon Frise",
  "Black and Tan Coonhound",
  "Bloodhound",
  "Bluetick Coonhound",
  "Boerboel",
  "Border Collie",
  "Border Terrier",
  "Boston Terrier",
  "Bouvier des Flandres",
  "Boxer",
  "Boykin Spaniel",
  "Bracco Italiano",
  "Briard",
  "Brittany",
  "Bull Terrier",
  "Bull Terrier (Miniature)",
  "Bullmastiff",
  "Cairn Terrier",
  "Cane Corso",
  "Cardigan Welsh Corgi",
  "Catahoula Leopard Dog",
  "Caucasian Shepherd (Ovcharka)",
  "Cavalier King Charles Spaniel",
  "Chesapeake Bay Retriever",
  "Chinese Crested",
  "Chinese Shar-Pei",
  "Chinook",
  "Chow Chow",
  "Clumber Spaniel",
  "Cocker Spaniel",
  "Cocker Spaniel (American)",
  "Coton de Tulear",
  "Dalmatian",
  "Doberman Pinscher",
  "Dogo Argentino",
  "Dutch Shepherd",
  "English Setter",
  "English Shepherd",
  "English Springer Spaniel",
  "English Toy Spaniel",
  "English Toy Terrier",
  "Eurasier",
  "Field Spaniel",
  "Finnish Lapphund",
  "Finnish Spitz",
  "French Bulldog",
  "German Pinscher",
  "German Shepherd Dog",
  "German Shorthaired Pointer",
  "Giant Schnauzer",
  "Glen of Imaal Terrier",
  "Golden Retriever",
  "Gordon Setter",
  "Great Dane",
  "Great Pyrenees",
  "Greyhound",
  "Griffon Bruxellois",
  "Harrier",
  "Havanese",
  "Irish Setter",
  "Irish Terrier",
  "Irish Wolfhound",
  "Italian Greyhound",
  "Japanese Chin",
  "Japanese Spitz",
  "Keeshond",
  "Komondor",
  "Kooikerhondje",
  "Kuvasz",
  "Labrador Retriever",
  "Lagotto Romagnolo",
  "Lancashire Heeler",
  "Leonberger",
  "Lhasa Apso",
  "Maltese",
  "Miniature American Shepherd",
  "Miniature Pinscher",
  "Miniature Schnauzer",
  "Newfoundland",
  "Norfolk Terrier",
  "Norwich Terrier",
  "Nova Scotia Duck Tolling Retriever",
  "Old English Sheepdog",
  "Olde English Bulldogge",
  "Papillon",
  "Pekingese",
  "Pembroke Welsh Corgi",
  "Perro de Presa Canario",
  "Pharaoh Hound",
  "Plott",
  "Pomeranian",
  "Poodle (Miniature)",
  "Poodle (Toy)",
  "Pug",
  "Puli",
  "Pumi",
  "Rat Terrier",
  "Redbone Coonhound",
  "Rhodesian Ridgeback",
  "Rottweiler",
  "Russian Toy",
  "Saint Bernard",
  "Saluki",
  "Samoyed",
  "Schipperke",
  "Scottish Deerhound",
  "Scottish Terrier",
  "Shetland Sheepdog",
  "Shiba Inu",
  "Shih Tzu",
  "Shiloh Shepherd",
  "Siberian Husky",
  "Silky Terrier",
  "Smooth Fox Terrier",
  "Soft Coated Wheaten Terrier",
  "Spanish Water Dog",
  "Spinone Italiano",
  "Staffordshire Bull Terrier",
  "Standard Schnauzer",
  "Swedish Vallhund",
  "Thai Ridgeback",
  "Tibetan Mastiff",
  "Tibetan Spaniel",
  "Tibetan Terrier",
  "Toy Fox Terrier",
  "Treeing Walker Coonhound",
  "Vizsla",
  "Weimaraner",
  "Welsh Springer Spaniel",
  "West Highland White Terrier",
  "Whippet",
  "White Shepherd",
  "Wire Fox Terrier",
  "Wirehaired Pointing Griffon",
  "Wirehaired Vizsla",
  "Xoloitzcuintli",
  "Yorkshire Terrier"
]

breeds.each do |b|
  Breed.create({
    name: b,
  })
end

eyes = [
  'Brown',
  'Blue',
  'Speckled',
  'Parti',
  'Hazel',
  'Gold',
]

eyes.each do |e|
  EyeColor.create({
    name: e,
  })
end

states = [
  {
    "name": "Alabama",
    "abbreviation": "AL"
  },
  {
    "name": "Alaska",
    "abbreviation": "AK"
  },
  {
    "name": "American Samoa",
    "abbreviation": "AS"
  },
  {
    "name": "Arizona",
    "abbreviation": "AZ"
  },
  {
    "name": "Arkansas",
    "abbreviation": "AR"
  },
  {
    "name": "California",
    "abbreviation": "CA"
  },
  {
    "name": "Colorado",
    "abbreviation": "CO"
  },
  {
    "name": "Connecticut",
    "abbreviation": "CT"
  },
  {
    "name": "Delaware",
    "abbreviation": "DE"
  },
  {
    "name": "District Of Columbia",
    "abbreviation": "DC"
  },
  {
    "name": "Federated States Of Micronesia",
    "abbreviation": "FM"
  },
  {
    "name": "Florida",
    "abbreviation": "FL"
  },
  {
    "name": "Georgia",
    "abbreviation": "GA"
  },
  {
    "name": "Guam",
    "abbreviation": "GU"
  },
  {
    "name": "Hawaii",
    "abbreviation": "HI"
  },
  {
    "name": "Idaho",
    "abbreviation": "ID"
  },
  {
    "name": "Illinois",
    "abbreviation": "IL"
  },
  {
    "name": "Indiana",
    "abbreviation": "IN"
  },
  {
    "name": "Iowa",
    "abbreviation": "IA"
  },
  {
    "name": "Kansas",
    "abbreviation": "KS"
  },
  {
    "name": "Kentucky",
    "abbreviation": "KY"
  },
  {
    "name": "Louisiana",
    "abbreviation": "LA"
  },
  {
    "name": "Maine",
    "abbreviation": "ME"
  },
  {
    "name": "Marshall Islands",
    "abbreviation": "MH"
  },
  {
    "name": "Maryland",
    "abbreviation": "MD"
  },
  {
    "name": "Massachusetts",
    "abbreviation": "MA"
  },
  {
    "name": "Michigan",
    "abbreviation": "MI"
  },
  {
    "name": "Minnesota",
    "abbreviation": "MN"
  },
  {
    "name": "Mississippi",
    "abbreviation": "MS"
  },
  {
    "name": "Missouri",
    "abbreviation": "MO"
  },
  {
    "name": "Montana",
    "abbreviation": "MT"
  },
  {
    "name": "Nebraska",
    "abbreviation": "NE"
  },
  {
    "name": "Nevada",
    "abbreviation": "NV"
  },
  {
    "name": "New Hampshire",
    "abbreviation": "NH"
  },
  {
    "name": "New Jersey",
    "abbreviation": "NJ"
  },
  {
    "name": "New Mexico",
    "abbreviation": "NM"
  },
  {
    "name": "New York",
    "abbreviation": "NY"
  },
  {
    "name": "North Carolina",
    "abbreviation": "NC"
  },
  {
    "name": "North Dakota",
    "abbreviation": "ND"
  },
  {
    "name": "Northern Mariana Islands",
    "abbreviation": "MP"
  },
  {
    "name": "Ohio",
    "abbreviation": "OH"
  },
  {
    "name": "Oklahoma",
    "abbreviation": "OK"
  },
  {
    "name": "Oregon",
    "abbreviation": "OR"
  },
  {
    "name": "Palau",
    "abbreviation": "PW"
  },
  {
    "name": "Pennsylvania",
    "abbreviation": "PA"
  },
  {
    "name": "Puerto Rico",
    "abbreviation": "PR"
  },
  {
    "name": "Rhode Island",
    "abbreviation": "RI"
  },
  {
    "name": "South Carolina",
    "abbreviation": "SC"
  },
  {
    "name": "South Dakota",
    "abbreviation": "SD"
  },
  {
    "name": "Tennessee",
    "abbreviation": "TN"
  },
  {
    "name": "Texas",
    "abbreviation": "TX"
  },
  {
    "name": "Utah",
    "abbreviation": "UT"
  },
  {
    "name": "Vermont",
    "abbreviation": "VT"
  },
  {
    "name": "Virgin Islands",
    "abbreviation": "VI"
  },
  {
    "name": "Virginia",
    "abbreviation": "VA"
  },
  {
    "name": "Washington",
    "abbreviation": "WA"
  },
  {
    "name": "West Virginia",
    "abbreviation": "WV"
  },
  {
    "name": "Wisconsin",
    "abbreviation": "WI"
  },
  {
    "name": "Wyoming",
    "abbreviation": "WY"
  }
]

states.each do |state|
  State.create({
    name: state[:name],
    abbr: state[:abbreviation]
  })
end

# 100.times do |i|
#   User.create({
#     name: Faker::Name.name,
#     email: Faker::Internet.email,
#     city: Faker::Address.city,
#     zip: Faker::Address.zip,
#     address: Faker::Address.street_address,
#     sub: Faker::IDNumber.valid,
#     phone: Faker::PhoneNumber.phone_number
#   })
# end

# 100.times do |i|
#   Dog.create({
#     name: Faker::Name.first_name,
#     user_id: rand(1..65),
#     gender: Faker::Gender.binary_type,
#     registered: true,
#     description: Faker::Lorem.paragraph_by_chars(256, false),
#     birthdate: Faker::Date.birthday(1, 13),
#     papered: true,
#     eyes: eyes.sample
#   })
# end

# 500.times do |i|
#   DogImage.create({
#     dog_id: rand(1..100),
#     url: Faker::LoremPixel.image("800x553", false, 'animals')
#   })
# end