class Locality < ActiveRecord::Base
  attr_accessible :city, :latitude, :longitude, :name
  has_many :posts

  def address
    [name, city, 'andrapradesh', 'india'].compact.join(', ')
  end

  geocoded_by :address
  after_validation :geocode

end
