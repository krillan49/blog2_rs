Rails.application.routes.draw do

  resources :images do
  #   resources :comments
  end

  resources :posts do 
    resources :comments, only: [:create]#, path_names: { :new => '' }
  end

  resources :comments#, only: [:new, :create]

  root "home#index"
end
