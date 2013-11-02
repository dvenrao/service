class Post < ActiveRecord::Base
  attr_accessible :category_id, :city, :description, :locality_id, :mobile_no, :title, :service_type
  belongs_to :category
  belongs_to :locality
  validates :title, presence: true,
      length: { minimum: 5 }

end
