require "rails_helper"

RSpec.describe Administrator, type: :model do
  subject(:admin) { create(:administrator) }

  describe "validations" do
    it { is_expected.to validate_presence_of :email }
    it { is_expected.to validate_presence_of :first_name }
    it { is_expected.to validate_presence_of :last_name }
  end

  describe "#full_name" do
    it { expect(admin.full_name).to eq("#{admin.first_name} #{admin.last_name}") }
  end
end
