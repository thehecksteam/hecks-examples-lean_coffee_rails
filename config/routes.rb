Rails.application.routes.draw do
  namespace :meetings do
    resources :participants
    resources :meetings
  end

  namespace :users do
    resources :users
  end

  resource :domain_schema
  root controller: :welcome, action: :show
end
