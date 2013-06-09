DevSquirrel::Application.routes.draw do

  resources :posts, :haikus, :photos, :admins
  resources :sessions, :only => [:create]

  namespace :dev do
    resources :links
  end

  root :to => 'home#index'

  get "/about" => 'about#index', :as => 'about'

  get "/dev" => 'dev#index', :as => 'dev'

  get "/narwhal" => "sessions#index"
  get "/logout" => "sessions#destroy", :as => 'logout'

end