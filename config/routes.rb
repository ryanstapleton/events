Rails.application.routes.draw do
  devise_for :users, path: '', path_names: {sign_in: 'login', sign_out: 'logout'}
  resources :events

  get 'index', to: 'events#index'

  root :to => 'events#home'
end
