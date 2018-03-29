FactoryBot.define do
  factory :course do
    teacher
    title { FFaker::Lorem.word }
    slug { FFaker::Internet.slug }
    description { FFaker::Lorem.paragraph }
  end

  trait :published do
    published true
  end
end
