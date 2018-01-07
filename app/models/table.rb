class Table < ActiveRecord::Base
  belongs_to :restaurant

  has_many :users

  def as_json
    { id: id, lat: location_lat, lng: location_lng, size: size }
  end
end
