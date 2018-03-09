require "rails_helper"

RSpec.describe Learner, type: :model do
  subject(:learner) { Learner.new }

  describe "validations" do
    it { is_expected.to validate_presence_of :email }
    it { is_expected.to validate_presence_of :first_name }
    it { is_expected.to validate_presence_of :last_name }
  end

  describe "methods" do
    describe "#full_name" do
      it { expect(learner.full_name).to eq("#{learner.first_name} #{learner.last_name}") }
    end
  end
end
