Rails.application.routes.draw do
  namespace :api, constraints: { format: :json } do
    namespace :v1 do
      resources :orders do
        collection do
          post 'create' => :create
          post 'create_waiting' => :create_waiting
        end
      end

      resources :users


      resources :restaurants do
        collection do
          get 'special_requests' => :special_requests
        end
      end
    end
  end
end