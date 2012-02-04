CarRentalApp::Application.routes.draw do
  resources :cars
  resources :car_types
  resources :coupons
  resources :rentals
  resources :equipments
  resources :clients
  root :to => 'rentals#index'
end
