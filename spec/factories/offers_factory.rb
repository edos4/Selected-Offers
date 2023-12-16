FactoryBot.define do
  factory :offer do
    start_age { 33 }
    end_age { 33 }
    gender { ['male', 'female'].sample }
    description { Faker::Marketing.buzzwords }
  end
end
