class City < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged

  geocoded_by :address, :latitude => :latitude, :longitude => :longitude
  after_validation :geocode
end
