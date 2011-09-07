Microdiario::Application.routes.draw do
  root :to => 'posts#index'

  resources :posts

  match '/auth/:provider/callback' => 'sessions#create'
  resources :sessions
end

