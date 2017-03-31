Rails.application.routes.draw do

  get 'admins/index'
  
  resources :topics do
    member do
      resources :posts
    end
  end

  devise_for :users, :controllers => { registrations:
'registrations' }

  root 'pages#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
