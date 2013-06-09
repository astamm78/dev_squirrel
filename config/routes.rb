DevSquirrel::Application.routes.draw do

  root :to => 'home#index'

  get "/about" => 'about#index', :as => 'about'

end