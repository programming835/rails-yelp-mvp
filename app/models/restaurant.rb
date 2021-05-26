class Restaurant < ApplicationRecord
  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]

  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: { in: CATEGORIES }



  has_many :reviews, dependent: :destroy

end

# :size, inclusion: { in: %w(small medium large),
#     message: "%{value} is not a valid size" }


