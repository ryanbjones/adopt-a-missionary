Rails.application.routes.draw do
  devise_for :moderators
  resources :moderators

  root 'home#index'

end
