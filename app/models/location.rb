class Location < ActiveRecord::Base
  has_many :profiles

  def to_s
    name
  end
end
