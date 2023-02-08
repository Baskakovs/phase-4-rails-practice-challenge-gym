Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :membership, only: [:create]
  resources :gym, only: [:show, :destroy]
  resources :client, only: [:show]
end
