require "rails_helper"

RSpec.describe "Teacher creates new course", type: :feature do
  include_context "when teacher signed in"

  let(:course_attributes) { attributes_for(:course) }
  let(:created_course) { Course.find_by(title: course_attributes[:title]) }

  before do
    visit teachers_courses_path
    click_on "Create new course"
  end

  it "with valid parameters" do
    fill_in :course_title, with: course_attributes[:title]
    fill_in :course_slug, with: course_attributes[:slug]
    fill_in :course_description, with: course_attributes[:description]

    click_button "Create Course"

    expect(page).to have_content created_course.title
  end

  it "with empty title" do
    fill_in :course_title, with: course_attributes[:title]
    fill_in :course_description, with: ""

    click_button "Create Course"

    expect(page).to have_content "can't be blank"
  end

  it "with empty description" do
    fill_in :course_title, with: ""
    fill_in :course_description, with: course_attributes[:description]

    click_button "Create Course"

    expect(page).to have_content "can't be blank"
  end
end
