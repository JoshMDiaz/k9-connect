class User < ApplicationRecord
  has_many :dogs
  validates :email, presence: true
  validates :sub, presence: true
end
