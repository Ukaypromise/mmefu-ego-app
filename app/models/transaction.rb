class Transaction < ApplicationRecord
    validate :name, presence: true, length: { in: 3..20 }
    validates :amount, presence: true, numericality: { greater_than: 0 }
end
