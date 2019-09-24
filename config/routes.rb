Rails.application.routes.draw do
  namespace :meetings do
    get 'topics/create'
    get 'topics/show'
    get 'topics/new'
  end
  namespace :meetings do
    get 'topics/create'
    get 'topics/read'
    get 'topics/show'
  end
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
