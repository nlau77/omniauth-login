Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#index'

  get "auth/:provider/callback", to: "sessions#create"
  resources :auth, only: :show
  resources :sessions, only: [:new, :create]
  
end
