Rails.application.routes.draw do
  namespace :api, constraints: { format: :json } do
    namespace :v1 do
      resources :orders do
        collection do
          put 'create_order' => :create_order
          put 'create_order_waiting' => :create_order_waiting
        end
      end

      resources :users
      resources :restaurants
    end
  end
end