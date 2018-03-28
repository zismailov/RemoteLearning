require "rails_helper"

RSpec.describe "Learner subscribes to course", type: :feature do
  include_context "when learner signed in"
  let(:available_course) { create(:course, :published) }

  before do
    visit learners_available_courses_path
  end

  it "course is added to my courses page" do
    expect(page).to have_content "Мои курсы [0]"
    click_button "Подписаться на курс"
    expect(page).to have_content "Мои курсы [1]"
  end
end
