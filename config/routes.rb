Rails.application.routes.draw do
  devise_for :moderators
  resources :moderators

  # root 'welcome#index'

end
