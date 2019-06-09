Rails.application.routes.draw do

  resources :inventors do
    resources :inventions
  end

  resources :investors do
    resources :invention_investments
  end

  resources :inventions
  resources :invention_investments

  root 'home#main'


  get '/investor_signin', to: 'sessions#investor_new'
  post '/investor_signin', to: 'sessions#investor_create'
  delete '/investor_logout', to: 'sessions#investor_destroy'

  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'


  get '/auth/facebook/callback' => 'sessions#create'
end
