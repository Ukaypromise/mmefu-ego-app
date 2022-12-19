class User < ApplicationRecord
    has_many :transactions, foreign_key: 'user_id', dependent: :destroy
    has_many :categories, foreign_key: 'user_id', dependent: :destroy

    validates :username, presence: true, length: { in: 3..20 }, uniqueness: true
    validates :name, presence: true, length: { in: 3..20 }
end
