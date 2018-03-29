class Teacher < ApplicationRecord
  devise :database_authenticatable, :lockable, :recoverable,
    :rememberable, :timeoutable, :trackable, :validatable, :confirmable, :registerable

  has_many :courses, dependent: :destroy

  validates :first_name, :last_name, :locale, presence: true
  validates :locale, inclusion: { in: %w[en ru] }

  def full_name
    "#{first_name} #{last_name}"
  end
end
