require "rails_helper"

RSpec.describe Teacher, type: :model do
  it { is_expected.to validate_presence_of :email }
  it { is_expected.to validate_presence_of :first_name }
  it { is_expected.to validate_presence_of :last_name }

  it { is_expected.to have_many :courses }
end
