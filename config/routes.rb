Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root to: 'pages#home'

  mount SimpleDiscussion::Engine => "/forum"
  get "pages/dashboard", to: "pages#dashboard", as: :dashboard
  resources :statements, only: [:show,:edit,:new,:create]

  resources :answers, only: %i[index show create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :specialists, only: %i[index show new create destroy] do
    resources :consultations, only: %i[new create]
  end
  resources :consultations, only: :destroy
  resources :statements, only: %i[index]

end
