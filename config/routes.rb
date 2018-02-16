Rails.application.routes.draw do

  root to: 'expenses#index'
  get 'about/index'
  resources :about
  resources :wards
  resources :expenses
  resources :expense_types


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
