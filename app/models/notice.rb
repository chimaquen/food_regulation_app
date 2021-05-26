class Notice < ApplicationRecord
  validates :title, presence: true, length: { maximum: 100 }
  validates :name, presence: true, length: { maximum: 100 }
  validates :category, presence: true, length: { maximum: 50 }
end
