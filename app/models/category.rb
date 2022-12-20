class Category < ApplicationRecord
  belongs_to :user
  has_many :transaction_categories, foreign_key: 'category_id', dependent: :destroy
  has_many :transactions, through: :transaction_categories, foreign_key: 'category_id', dependent: :destroy

  validates :name, presence: true, length: { in: 3..50 }
  validates :description, presence: true, length: { in: 3..100 }
  validates :icon, presence: true
end
