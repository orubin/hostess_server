class Restaurant < ActiveRecord::Base

  has_many :tables
  has_many :orders

  def as_json

    {


    }

  end

end
