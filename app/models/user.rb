class User < ApplicationRecord
  validates :username, length: { in: 3..20 }, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :password, length: { in: 5..20 }, presence: true

  has_many :posts
  has_many :comments
end
