class Question < ApplicationRecord
  belongs_to :topic

  validates :title, presence: true
end
