class Post < ActiveRecord::Base
  attr_accessible :city, :description, :locality_id, :mobile_no, :price, :title, :type, :you_are
  belongs_to :category
  belongs_to :locality
  validates :title, presence: true,
      length: { minimum: 5 }

end
