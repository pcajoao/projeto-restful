Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :user
    end
  end
  namespace :api do
    namespace :v1 do
      resources :user do
        resources :visit
      end
    end
  end
  namespace :api do
    namespace :v1 do
        resources :formulary do
          resources :question
        end
      end
    end
  namespace :api do
    namespace :v1 do
        resources :visit do
          resources :formulary do
            resources :question do
              resources :answer
            end
          end
        end
      end
    end
  end