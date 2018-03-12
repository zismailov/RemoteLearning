require "rails_helper"

RSpec.describe CourseParticipation, type: :model do
  describe "associations" do
    it { is_expected.to belong_to :course }
    it { is_expected.to belong_to :learner }
  end
end
