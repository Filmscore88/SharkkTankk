Rails.application.routes.draw do

  resources :users do
    resources :inventions
  end

  resources :users do
    resources :invention_investments
  end

  resources :inventions
  resources :invention_investments

  root 'users#new'


  get '/signin', to: 'sessions#user_new'
  post '/signin', to: 'sessions#user_create'
  delete '/logout', to: 'sessions#user_destroy'
  get '/auth/facebook/callback' => 'sessions#facebook_create'
end
