Rails.application.routes.draw do
  resources :vacations
  resources :staffs
  resources :homes
  devise_for :users ,controllers: { 
    staffs: 'staffs'
  }
  resources :departments
  resources :bulletins
  resources :users
  resources :companies
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'homes#index'
end
