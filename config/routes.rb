Rails.application.routes.draw do
  resources :samples
  resources :manufacturer_partners
  resources :production_partners
  resources :products
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
