Rails.application.routes.draw do
  root 'dashboard#index'
  get 'carros/index'
  resources :carros
  namespace :api, defaults: {format: 'json'} do
    resources :carros, only: [:index, :create, :destroy, :update, :show]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
