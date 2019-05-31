Rails.application.routes.draw do
  get 'welcome/index'

  resources :articles

  root 'welcome#index'
  # 2060
  # bin/rails routes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
