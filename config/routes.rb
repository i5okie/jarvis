Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resources :purchased_items
  resources :sales_orders
  resources :shipping_addresses
  resources :customers
  resources :items
  resources :notes
  resources :contacts
  
  root to: 'customers#index'
end
