Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'fans#index'
  get '/signup' => 'fans#new', as: 'signup'
  post '/signup' => 'fans#create'
  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  get '/auth/facebook/callback' => 'sessions#create'
  get '/signout' => 'sessions#destroy'
  resources :fans

  resources :teams do
  resources :players
  end

  resources :players

end

