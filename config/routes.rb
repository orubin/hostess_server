Rails.application.routes.draw do
  namespace :api, constraints: { format: :json } do
    namespace :v1 do
      resources :orders do
        collection do
          post 'create_order' => :create_order
          post 'create_order_waiting' => :create_order_waiting
        end
      end

      resources :users


      resources :restaurants do
        collection do
          post 'special_requests' => :special_requests
        end
      end
    end
  end
end