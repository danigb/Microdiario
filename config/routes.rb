Microdiario::Application.routes.draw do
  root to: 'client#show'

  match '/search/:term' => 'posts#search'
  resources :posts

  namespace :backend do
    root to: 'posts#index'
    resources :posts
    resources :users
  end

  match "/auth/:provider/callback" => "sessions#create"
  match "/logout" => "sessions#destroy", :as => :logout
  match "/entrar" => "sessions#new", :as => :login
  match "/enter/:id" => "sessions#enter" if Rails.env.development?
end

