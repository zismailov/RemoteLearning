class Administrator < ApplicationRecord
  devise :database_authenticatable, :lockable,
    :recoverable, :timeoutable, :trackable, :validatable

  validates :first_name, :last_name, presence: true

  def full_name
    "#{first_name} #{last_name}"
  end
end
