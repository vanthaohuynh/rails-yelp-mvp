class Restaurant < ApplicationRecord
  has_many :reviews
  CATEGORY = %w[chinese italian japanese french belgian]

  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: CATEGORY }
end
