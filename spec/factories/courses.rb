FactoryBot.define do
  factory :course do
    teacher
    title "My Course"
    slug "my-course"
    description "My Course Description"
  end

  trait :published do
    published true
  end
end
