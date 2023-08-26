Rails.application.routes.draw do

  resources :images do
    resources :comments, only: [:create]
  end

  resources :posts do 
    resources :comments, only: [:create]#, path_names: { :new => '' }
  end

  resources :comments

  root "home#index"
end
