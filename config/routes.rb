Rails.application.routes.draw do
  
  resources :sessions, only: [:create]
  resources :registrations, only: [:create]
  resources :workouts, only: [:index, :create]
  resources :users, only: [:index, :create]
  resources :sessions, only: [:create]
  delete :logout, to: "sessions#logout"
  get :logged_in, to: "sessions#logged_in"
  
  post "login", to: "authentication#login"
  post "signup", to: "authentication#signup"

    post "/login", to: "auth#login"
    get "/auto_login", to: "auth#auto_login"
    get "/user_is_authed", to: "auth#user_is_authed"

    root to: "static#home"


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
