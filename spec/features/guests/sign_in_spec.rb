require "rails_helper"

RSpec.describe "Sign In", type: :feature do
  let(:teacher) { create :teacher }
  let(:unconfirmed_teacher) { create :teacher, :not_confirmed }

  def sign_in(email, password)
    visit new_teacher_session_path

    fill_in :teacher_email, with: email
    fill_in :teacher_password, with: password

    click_button "Log in"
  end

  it "Guest signs in with valid credentials" do
    sign_in(teacher.email, teacher.password)

    expect(page).to have_content(teacher.full_name)
  end

  it "Visitor signs in with invalid credentials" do
    sign_in(teacher.email, "wrong password")

    expect(page).to have_content("Invalid Email or password")
  end
end
