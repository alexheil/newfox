class City < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged

  geocoded_by :title, :latitude => :latitude, :longitude => :longitude
  after_validation :geocode

  has_many :places, dependent: :destroy
end
