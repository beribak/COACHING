class Review < ApplicationRecord
  belongs_to :lesson
  belongs_to :user
  validates :rating, numericality: :true, inclusion: { in: 1..5 }
end
