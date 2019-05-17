class State < ApplicationRecord
  validates :name, presence: true
  validates :abbr, presence: true
end