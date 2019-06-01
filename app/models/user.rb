class User < ApplicationRecord
  has_many :dogs
  validates :name, presence: true
  validates :email, presence: true
  validates :picture
  validates :state
  validates :zip
  validates :city
  validates :address
  validates :sub
end
