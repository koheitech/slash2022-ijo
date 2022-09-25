Rails.application.routes.draw do
  resources :energy_usages
  root 'home#index'
end
