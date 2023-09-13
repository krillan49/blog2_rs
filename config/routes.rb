Rails.application.routes.draw do

  scope "(:locale)", locale: /#{I18n.available_locales.join('|')}/ do

    devise_for :users
    devise_scope :user do
      get '/users/sign_out' => 'devise/sessions#destroy'
    end
    
    root to: "home#index"

    resources :images do
      resources :comments, only: [:create]
    end

    resources :posts do 
      resources :comments, only: [:create]
    end

    resources :comments

    get 'users_list' => 'protected#users_list'
    get 'protected/:id' => 'protected#user_content'
    
  end

end
