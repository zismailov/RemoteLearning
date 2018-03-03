class Course < ApplicationRecord
  belongs_to :teacher

  validates :title, :description, presence: true
end
