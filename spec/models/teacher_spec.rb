require "rails_helper"

RSpec.describe Teacher, type: :model do
  subject(:teacher) { create(:teacher) }

  describe "validations" do
    it { is_expected.to validate_presence_of :email }
    it { is_expected.to validate_presence_of :first_name }
    it { is_expected.to validate_presence_of :last_name }
  end

  describe "associations" do
    it { is_expected.to have_many :courses }
  end

  describe "methods" do
    describe "#full_name" do
      it { expect(teacher.full_name).to eq("#{teacher.first_name} #{teacher.last_name}") }
    end
  end
end
