class User < ApplicationRecord
  has_many :dogs
  validates :email, presence: true
  validates :sub, presence: true

  geocoded_by :full_address

  after_validation :geocode, if: ->(user){ (user.address.present? || user.city.present? || user.zip.present? || user.state.present?) }

  def full_address
    [address, city, zip, state].reject { |a| a.empty? }.join(', ')
  end

end
