class Restaurant < ActiveRecord::Base

  has_many :tables
  has_many :orders

  def as_json
    {
      id: id,
      description: description,
      layout: get_layout
    }
  end

  def get_special_requests

  end

  def get_layout
    [{ id: 12, lat: 124, lng: 345 }, { id: 13, lat: 144, lng: 245 }, { id: 14, lat: 184, lng: 315 }]
  end
end
