Rails.application.routes.draw do
  root to: 'cocktails#index'
  resources :cocktails, only: [:index, :new, :create, :show,] do
  
    resources :doses, only: [:new, :create]
    resources :reviews, only: [:new, :create, :edit]
  end
  resources :doses, only: [:destroy]
  post "/search", to: "cocktails#search"
  get "/about", to: "about#index"
end