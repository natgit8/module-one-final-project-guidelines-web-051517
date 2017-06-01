class VenueCategory < ActiveRecord::Base
  has_many :venues, through: :categories


end
