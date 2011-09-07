Microdiario::Application.routes.draw do
  root :to => 'posts#index'

  match '/search/:term' => 'posts#search'
  resources :posts

  match '/auth/:provider/callback' => 'sessions#create'
  resources :sessions
end

