Rails.application.routes.draw do
  root "pages#home"
  get "pages/home"

  get "up" => "rails/health#show", as: :rails_health_check
  resources :rooms, :guests, :reservations, :services, only: [:index, :show]


end
