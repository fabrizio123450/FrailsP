Rails.application.routes.draw do
  get 'excel_viewer/show'
  resources :products
  resources :invoices
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
