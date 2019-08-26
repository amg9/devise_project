Rails.application.routes.draw do
  root "pets#index"
  devise_for :users

  resources :pets
end
