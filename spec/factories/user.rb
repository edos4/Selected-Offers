FactoryBot.define do
  factory :user do
    username { Faker::Internet.username }
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    birthdate { Faker::Date.birthday(min_age: 18, max_age: 65) }
    gender { ['male', 'female'].sample }
    password { Faker::Internet.password(min_length: 8) }
    email { Faker::Internet.email }
  end
end
