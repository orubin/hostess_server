class Restaurant < ActiveRecord::Base

  has_many :tables
  has_many :orders
  has_many :tables

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
    data = [{ id: 12, lat: 124, lng: 345, size: 4 }, { id: 13, lat: 144, lng: 245, size: 4 }, { id: 14, lat: 184, lng: 315, size: 4 }]

    return [] if tables.nil? || tables.size == 0 || tables.empty?

    result = []
    tables.each do |table|
      result << table.as_json
    end

    result
    data
  end
end
