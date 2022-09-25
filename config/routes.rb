Rails.application.routes.draw do
  resources :energy_usages
  root 'energy_usages#index'
end
