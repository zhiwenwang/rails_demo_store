Rails.application.routes.draw do
  devise_for :users
  root 'home#index'

  namespace :backend do
    get 'dashboard', to:'dashboard#index'
  end
end
