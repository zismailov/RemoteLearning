FactoryBot.define do
  factory :learner do
    first_name { FFaker::Name.first_name }
    last_name { FFaker::Name.last_name }
    email { generate(:learner_email) }
    password "123456"
    password_confirmation "123456"
    locale "en"

    confirmed_at { Time.zone.now }
  end

  trait :not_confirmed_learner do
    confirmed_at nil
  end
end
