Rails.application.routes.draw do
  root 'carzs#index'
  resources :carzs
end