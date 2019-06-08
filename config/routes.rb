Rails.application.routes.draw do

  resources :invention_investments
  resources :inventions
  resources :inventors
  resources :investors

  get '/homepage', to: 'home#main'


 get '/investor_signin', to: 'sessions#investor_ new'
 post '/investor_signin', to: 'sessions#investor_create'
 delete '/investor_logout', to: 'sessions#investor_destroy'
 
  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'


  get '/auth/facebook/callback' => 'sessions#create'
  #root 'welcome#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
