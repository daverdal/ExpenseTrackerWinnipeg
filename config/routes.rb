Rails.application.routes.draw do
  resources :expensetypes
  get 'expense_type/new'

  get 'expense_type/create'

  get 'expense_type/update'

  get 'expense_type/edit'

  get 'expense_type/destroy'

  get 'expense_type/show'

  get 'expense_type/index'

  root to: 'expenses#index'
  get 'about/index'
  resources :about
  resources :wards
  resources :expenses
  resources :expense_types


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
