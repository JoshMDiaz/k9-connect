class DogImage < ApplicationRecord
  belongs_to :dog
  validates :dog_id, presence: true
  validates :url, presence: true
end
