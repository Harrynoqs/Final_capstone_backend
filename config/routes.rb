Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  root to: redirect('/api-docs')
  # root "users#index"
  # get "/users", to: "users#index"
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :show, :create, :update, :destroy]
      resources :doctors, only: [:index, :show, :create, :update, :destroy]
      resources :reservations, only: [:index, :show, :create, :update, :destroy]
      post '/login', to: 'authentication#login'
    end
  end  
end
