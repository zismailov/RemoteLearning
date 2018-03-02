class Teacher < ApplicationRecord
  devise :database_authenticatable, :lockable, :registerable,
    :recoverable, :rememberable, :timeoutable, :trackable, :validatable

  validates :first_name, :last_name, presence: true

  def full_name
    "#{first_name} #{last_name}"
  end
end
