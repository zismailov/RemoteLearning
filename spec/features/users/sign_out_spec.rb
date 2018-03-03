require "rails_helper"

RSpec.describe "Sign Out", type: :feature do
  include_context "teacher signed in"

  it "teacher signs out" do
    visit "/"

    click_on current_teacher.full_name

    click_link "Sign out"

    expect(page).to have_content("Signed out successfully.")
  end
end
