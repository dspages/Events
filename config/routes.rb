Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'events#index'
  resources :events, only: [:index, :show]
  namespace :api, defaults: { format: :json } do
    resources :people, only: [:index]
  end
end
