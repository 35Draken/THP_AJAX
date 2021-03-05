Rails.application.routes.draw do
  root "emails#index"
  resources :emails, only: [:create, :index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
