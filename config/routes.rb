Rails.application.routes.draw do
  namespace :meetings do
    resources :meetings do
    end
  end
  root controller: :welcome, action: :show
end
