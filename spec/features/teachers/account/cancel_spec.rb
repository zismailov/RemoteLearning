require "rails_helper"

RSpec.describe "Cancel Account", type: :feature do
  include_context "teacher signed in"

  let(:teacher) { Teacher.find_by(email: current_teacher.email) }

  before do
    visit edit_teacher_registration_path(current_teacher)
  end

  it "teacher cancels account" do
    click_link "I want to remove my account with all data!"

    expect(page).to have_content("Bye! Your account has been successfully cancelled. We hope to see you again soon.")

    expect(teacher).to be nil
  end
end
