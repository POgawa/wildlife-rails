class SightingsController < ApplicationController
  def index
    @sightings = Sightings.all
    render('species/index.html.erb')
  end
end
