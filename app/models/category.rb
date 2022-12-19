class Category < ApplicationRecord
    validates :name, presence: true, length: { in: 3..50 }
    validates :description, presence: true, length: { in: 3..100 }
    validates :icon, presence: true
