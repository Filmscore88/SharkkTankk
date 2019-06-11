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

  get '/inventor_signin', to: 'sessions#inventor_new'
  post '/inventor_signin', to: 'sessions#inventor_create'
  delete '/inventor_logout', to: 'sessions#inventor_destroy'


  get '/auth/facebook/callback' => 'sessions#inventor_create'
end
