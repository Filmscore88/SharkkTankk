Rails.application.routes.draw do
  resources :invention_investments
  resources :inventions
  resources :inventors
  resources :investors

  get '/signin', to: 'sessions#new'
  #post '/signin', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'


  get '/auth/facebook/callback' => 'sessions#create'
  root 'welcome#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
