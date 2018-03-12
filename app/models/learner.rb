class Learner < ApplicationRecord
  devise :confirmable, :database_authenticatable, :lockable, :registerable,
    :recoverable, :rememberable, :trackable, :timeoutable, :validatable

  has_many :course_participations
  has_many :courses, through: :course_participations

  validates :first_name, :last_name, presence: true

  def full_name
    "#{first_name} #{last_name}"
  end
end
