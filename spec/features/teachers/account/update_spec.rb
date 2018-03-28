require "rails_helper"

RSpec.describe "Update Account", type: :feature do
  include_context "when teacher signed in"

  before do
    visit edit_teacher_registration_path(current_teacher)
  end

  it "teacher enters not matched passwords" do
    fill_in :teacher_password, with: "qwerty"
    fill_in :teacher_password_confirmation, with: "123123"
    click_on "Update"

    expect(page).to have_content("doesn't match Password")
  end
end
