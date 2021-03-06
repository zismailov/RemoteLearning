require "rails_helper"

RSpec.describe CourseParticipation, type: :model do
  describe "associations" do
    it { is_expected.to belong_to :course }
    it { is_expected.to belong_to :learner }
  end

  describe "validations" do
    it { is_expected.to validate_presence_of :course_id }
    it { is_expected.to validate_presence_of :learner_id }

    it { is_expected.to validate_uniqueness_of(:course_id).scoped_to(:learner_id) }
  end
end
