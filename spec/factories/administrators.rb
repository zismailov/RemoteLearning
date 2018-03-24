FactoryBot.define do
  factory :administrator do
    first_name { FFaker::Name.first_name }
    last_name { FFaker::Name.last_name }
    email { generate(:administrator_email) }
    password "123456"
    password_confirmation "123456"
  end
end
