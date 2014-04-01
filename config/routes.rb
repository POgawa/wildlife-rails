Wildlife::Application.routes.draw do
    match('species', {:via => :get, :to => 'species#index'})
    match('species', {:via => :post, :to => 'species#create'})
    match('species/edit', {:via => :get, :to => 'species#edit'})

    match('species/new', {:via=> :get, :to =>'species#new'})
    match('species/:id/edit', {:via => :get, :to => 'species#edit'})
    match('species/:id', {:via => [:patch, :put], :to => 'species#update'})
    # match('/', {:via => :get, :to => 'species#index'})

    match('sightings', {:via => :get, :to => 'species#index'})
end

