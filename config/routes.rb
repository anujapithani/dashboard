Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "main#index"
  get "/user", to: "main#index"
  get "/feedbackform", to: "feedbackform#index"
  get "/employee", to: "employee#index" 
  get "/registration", to: "registration#index"
  resources  :employee 
  resources :registration
  resources :feedbackform
end
