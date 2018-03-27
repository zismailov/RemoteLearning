require "rails_helper"

RSpec.describe Topic, type: :model do
  describe "validations" do
    it { is_expected.to validate_presence_of :title }
    it { is_expected.to validate_presence_of :course_id }
  end

  describe "associations" do
    it { is_expected.to have_many :materials }
    it { is_expected.to have_many :questions }
    it { is_expected.to have_many :tasks }
  end
end
