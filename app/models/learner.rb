class Learner < ApplicationRecord
  devise :confirmable, :database_authenticatable, :lockable, :registerable,
    :recoverable, :rememberable, :trackable, :timeoutable, :validatable

  validates :first_name, :last_name, presence: true

  def full_name
    "#{first_name} #{last_name}"
  end
end
