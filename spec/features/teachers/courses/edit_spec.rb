require "rails_helper"

RSpec.describe "Teacher edits course", type: :feature do
  include_context "teacher signed in"

  let(:course) { create(:course, teacher: current_teacher) }

  before do
    visit teachers_course_path(course)
    click_on "Edit course"
  end

  it "with valid parameters" do
    fill_in :course_title, with: "New title"
    fill_in :course_description, with: "New description"

    click_button "Update Course"

    expect(page).to have_content "New title"
    expect(page).to have_content "New description"
  end

  it "with empty title" do
    fill_in :course_title, with: ""
    fill_in :course_description, with: "New description"

    click_button "Update Course"

    expect(page).to have_content "can't be blank"
  end

  it "with empty descrtiption" do
    fill_in :course_title, with: "New title"
    fill_in :course_description, with: ""

    click_button "Update Course"

    expect(page).to have_content "can't be blank"
  end
end
