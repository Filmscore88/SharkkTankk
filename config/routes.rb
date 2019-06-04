Rails.application.routes.draw do
  resources :inventions
  resources :invention__skips
  resources :inventors
  resources :investors
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
