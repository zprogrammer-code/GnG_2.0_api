Rails.application.routes.draw do
  resources :workouts
  resources :users
  post "login", to: "authentication#login"
  post "signup", to: "authentication#signup"


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end