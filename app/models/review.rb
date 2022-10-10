class Review < ApplicationRecord
  belongs_to :user
  belongs_to :shokudou_shop
  validates :score, presence: true
end
