class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, presence: true
  validates :ratings, inclusion: { in: [1, 2, 3, 4, 5] }
end
