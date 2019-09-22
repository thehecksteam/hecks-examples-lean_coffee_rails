Rails.application.routes.draw do
  namespace :meetings do
    resources :meetings
  end

  resource :domain_schema
  root controller: :welcome, action: :show
end
