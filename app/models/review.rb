class Review < ApplicationRecord
  belongs_to :restaurant

  STARS = [0, 1, 2, 3, 4, 5]
  validates :content, presence: true
  validates :rating, presence: true
  validates :rating, numericality: { only_integer: true }
  validates :rating, inclusion: { in: STARS }
end
