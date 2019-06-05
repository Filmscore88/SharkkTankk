Rails.application.routes.draw do
  resources :invention_investments
  resources :inventions
  resources :invention__skips
  resources :inventors
  resources :investors
  root 'inventions#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
