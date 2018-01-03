Rails.application.routes.draw do
  namespace :api, constraints: { format: :json } do
    namespace :v1 do
      resources :orders
      resources :users
      resources :restaurants
    end
  end
end