class SpeciesController < ApplicationController
  def index
    @species = Species.all
    render('species/index.html.erb')
  end

  def new
    @species = Species.new
    render('species/new.html.erb')
  end

  def create
    @species = Species.new(params[:species])

    if @species.save
      @species = Species.all
      render('species/index.html.erb')
    else
      render('species/new.html.erb')
    end
  end

  def edit
    @species = Species.find(params[:id])
      render('species/edit.html.erb')
  end

  def update
    @species = Species.find(params[:id])
    if @species.update(params[:species])
      @species = Species.all
      render('species/index.html.erb')
    else
      render('species/edit.html.erb')
    end
  end

  def destroy
    @species = Species.find(params[:id])
    @species.destroy
    render('/species/index.html.erb')
  end
end




