class Movie < ActiveRecord::Base
  has_many :actors, through: :characters


end
