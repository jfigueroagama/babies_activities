Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    resources :activity do
      resources :activity_logs
    end
  end

  namespace :api do
    resources :baby do
      resources :activity_logs
    end
  end

  namespace :api do
    resources :assistant do
      resources :activity_logs
    end
  end
  
end
