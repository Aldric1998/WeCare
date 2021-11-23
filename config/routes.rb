Rails.application.routes.draw do
  root to: 'pages#home'
  resources :users, only: [:new, :create, :update] do
    resources :results, only: [:new, :index,:create,:update,:show,:edit]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
