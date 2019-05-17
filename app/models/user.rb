class User < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true
  validates :zip, presence: false
  validates :city, presence: false
  validates :address, presence: false
  validates :sub, presence: false
end
