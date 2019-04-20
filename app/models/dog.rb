class Dog < ApplicationRecord
  validates :name, presence: true
  validates :user_id, presence: true
  validates :gender, presence: true
  validates :breed, presence: true
  validates :papered, presence: true
  validates :registered, presence: true
  validates :description, presence: false
  validates :birthdate, presence: true
end
