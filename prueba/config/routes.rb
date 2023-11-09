Rails.application.routes.draw do
  resources :products
  resources :bill_v2s
  resources :invoices
  resources :invoice_items
  resources :commets
  resources :empleados

  get 'consume_api', to: 'api#consume_api'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
