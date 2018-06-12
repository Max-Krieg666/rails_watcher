Rails.application.routes.draw do
  namespace :rails_watcher do
    resources :events, only: [:index, :show]

    resources :statistics, only: [:index]

    namespace :api do
      namespace :v1 do
        resources :events, only: [:index, :show]
        resources :statistics, only: [:index] do
          collection do
            get :daily
            get :monthly
            get :yearly
            get :all_time
          end
        end
      end
    end
  end
end
