require "rails_helper"

RSpec.describe Course, type: :model do
  describe "validations" do
    it { is_expected.to validate_presence_of :title }
    it { is_expected.to validate_uniqueness_of :title }
    it { is_expected.to validate_presence_of :slug }
    it { is_expected.to validate_uniqueness_of :slug }
    it { is_expected.to validate_presence_of :description }
    it { is_expected.to validate_uniqueness_of :description }
    it { is_expected.to validate_presence_of :teacher_id }
  end

  describe "associations" do
    it { is_expected.to belong_to :teacher }
  end

  describe "scopes" do
    let(:courses) { create_list(:course, 4) }

    before do
      courses[0].update(published: true)
      courses[1].update(published: true)
    end

    describe "published" do
      it "returns published course" do
        expect(Course.published).to match_array [courses[0], courses[1]]
      end
    end

    describe "not published" do
      it "returns not published course" do
        expect(Course.not_published).to match_array [courses[2], courses[3]]
      end
    end
  end
end
