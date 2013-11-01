class Locality < ActiveRecord::Base
  attr_accessible :city, :latitude, :longitude, :name
  has_many :posts
end
