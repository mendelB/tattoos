Rails.application.routes.draw do
  resources :tattoos
  resources :colors
  resources :designs
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
