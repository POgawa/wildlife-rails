require 'spec_helper'

describe Sightings do
  it {should validate_presence_of :location}
  it {should validate_presence_of :species_id}
end
