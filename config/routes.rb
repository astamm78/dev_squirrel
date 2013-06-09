DevSquirrel::Application.routes.draw do

  resources :posts, :haikus, :photos

  namespace :dev do
    resources :links
  end

  root :to => 'home#index'

  get "/about" => 'about#index', :as => 'about'

  get "/dev" => 'dev#index', :as => 'dev'

end