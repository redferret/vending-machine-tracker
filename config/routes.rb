Rails.application.routes.draw do
  resources :snacks
  root to: "owners#index"

  resources :owners do
    resources :machines, only: [:index]
  end

  resources :machines, only: [:show]
end
