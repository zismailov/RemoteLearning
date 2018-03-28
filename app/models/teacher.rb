class Teacher < ApplicationRecord
  devise :database_authenticatable, :lockable, :recoverable,
    :rememberable, :timeoutable, :trackable, :validatable

  has_many :courses, dependent: :destroy

  validates :first_name, :last_name, presence: true

  def full_name
    "#{first_name} #{last_name}"
  end
end
