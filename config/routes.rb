Rails.application.routes.draw do
  resources :images
  resources :posts
  resources :comments
  root "home#index"
end
