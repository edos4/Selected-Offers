# Create users
User.create(
  username: '33YoMale',
  first_name: 'John 33',
  last_name: 'Doe',
  birthdate: Time.zone.today - 33.years,
  gender: 'Male',
  email: 'john@gmail.com',
  password: 'password'
)

User.create(
  username: '23YoFemale',
  first_name: 'Jane 23',
  last_name: 'Doe',
  birthdate: Time.zone.today - 23.years,
  gender: 'Female',
  email: 'jane@gmail.com',
  password: 'password'
)

# Create offers
Offer.create(
  description: 'Offer for John aged 33, Male',
  start_age: 30,
  end_age: 35,
  gender: 'Male'
)

Offer.create(
  description: 'Offer for Jane aged 23, Female',
  start_age: 20,
  end_age: 24,
  gender: 'Female'
)
