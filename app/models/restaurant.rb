class Restaurant < ApplicationRecord
  # has_many :name, :address, :category, :reviews
  has_many :reviews, dependent: :destroy
  VALID_CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :address, presence: true
  validates :category, presence: true, inclusion: { in: VALID_CATEGORIES }
  validates :name, presence: true
  # validates :name, presence: true
end
