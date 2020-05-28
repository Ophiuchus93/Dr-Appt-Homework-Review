Rails.application.routes.draw do
  root "doctors#index"

  resources :doctors
  resources :patients do
    resources :appointments, only: [:index, :new, :create, :destroy]
  end
end
