Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :answers, only: %i[index show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :specialists, only: %i[index show new create destroy] do
    resources :consultations, only: %i[new create destroy]
  end

  resources :statements, only: %i[index]
end
