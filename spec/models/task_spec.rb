require "rails_helper"

RSpec.describe Task, type: :model do
  describe "validations" do
    it { is_expected.to validate_presence_of :topic_id }
  end

  describe "associations" do
    it { is_expected.to belong_to :topic }
  end
end
