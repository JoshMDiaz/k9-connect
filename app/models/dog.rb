class Dog < ApplicationRecord
  has_many :dog_images
  has_many :dog_breeds
  has_many :breeds, through: :dog_breeds
  validates :name, presence: true
  validates :user_id, presence: true
  validates :gender, presence: true
  validates :birthdate, presence: true
end
