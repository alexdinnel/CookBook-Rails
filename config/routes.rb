Cookbook::Application.routes.draw do
  match('/', {:via => :get, :to => 'recipes#index'})
  match('recipes', {:via => :post, :to => 'recipes#search'})
  match('recipes/new', {:via => :get, :to => 'recipes#new'})
  match('recipes/new', {:via => :post, :to => 'recipes#create'})
  match('recipes/:id', {:via => :get, :to => 'recipes#show'})
  match('recipes/:id', {:via => :delete, :to => 'recipes#destroy'})
  match('recipes/:id/edit', {:via => :get, :to => 'recipes#edit'})
  match('recipes/:id/edit', {:via => [:put, :patch], :to => 'recipes#update'})
  match('tags', {:via => :post, :to => 'tags#create'})
  match('tags/new', {:via => :get, :to => 'tags#new'})
  match('tags/:name', {:via => :get, :to => 'tags#show'})
end
