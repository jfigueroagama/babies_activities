Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    resources :activities do
      resources :activity_logs
    end
    resources :babies do
      resources :activity_logs
    end
    resources :assistants do
      resources :activity_logs
    end
  end

  namespace :api do
    resources :activity_logs
  end

end
