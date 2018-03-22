require "rails_helper"

RSpec.describe Material, type: :model do
  describe "associations" do
    it { is_expected.to belong_to :topic }
    it { is_expected.to validate_presence_of :topic_id }
  end
end
