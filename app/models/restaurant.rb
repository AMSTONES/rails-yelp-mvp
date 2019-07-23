class Restaurant < ApplicationRecord
  category_array = ["chinese", "italian", "japanese", "french", "belgian"]
  has_many :reviews, dependent: :destroy

  validates :name, :address, :category, presence: true

  validates :category, inclusion: { in: category_array }
end
