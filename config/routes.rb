DevSquirrel::Application.routes.draw do

  resources :posts, :photos, :admins
  resources :sessions, :only => [:create]
  resources :tags, :only => [:show]
  resources :haikus, :only => [:index]

  namespace :dev do
    resources :links
  end

  root :to => 'home#index'

  get "/about" => 'about#index', :as => 'about'

  get "/dev" => 'dev#index', :as => 'dev'

  get "/narwhal" => "sessions#index"
  get "/logout" => "sessions#destroy", :as => 'logout'

end