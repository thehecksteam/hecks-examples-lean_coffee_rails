Rails.application.routes.draw do
  namespace :meetings do
    resources :meetings do
      resources :participants
    end
  end

  namespace :users do
    resources :users
  end

  resource :domain_schema
  root controller: :welcome, action: :show
end
