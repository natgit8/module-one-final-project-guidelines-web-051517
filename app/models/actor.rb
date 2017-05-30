class Actor < ActiveRecord::Base
  has_many :movies, through: :characters


end
