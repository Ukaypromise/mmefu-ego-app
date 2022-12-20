class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :transactions, foreign_key: 'user_id', dependent: :destroy
  has_many :categories, foreign_key: 'user_id', dependent: :destroy

  validates :username, presence: true, length: { in: 3..20 }, uniqueness: true
  validates :name, presence: true, length: { in: 3..20 }
end
