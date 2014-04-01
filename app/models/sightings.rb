class Sightings < ActiveRecord::Base
  validates :location, :presence => true
  validates :species_id, :presence => true

end
