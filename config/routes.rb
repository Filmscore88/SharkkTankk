Rails.application.routes.draw do
  resources :invention_investments
  resources :inventions
  resources :inventors
  resources :investors
  root 'welcome#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
