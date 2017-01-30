Rails.application.routes.draw do
  resources :purchased_items
  resources :sales_orders
  resources :shipping_addresses
  resources :customers
  resources :items
  resources :notes
  resources :contacts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
