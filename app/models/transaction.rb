class Transaction < ApplicationRecord
  belongs_to :user
  has_many :transaction_categories, foreign_key: 'transaction_id', dependent: :destroy
  has_many :categories, through: :transaction_categories, foreign_key: 'transaction_id'
end

# Path: app\models\transaction.rb
class Transaction
  validate :name, presence: true, length: { in: 3..20 }
  validates :amount, presence: true, numericality: { greater_than: 0 }
end
