DevSquirrel::Application.routes.draw do

  resources :posts

  root :to => 'home#index'

  get "/about" => 'about#index', :as => 'about'

end