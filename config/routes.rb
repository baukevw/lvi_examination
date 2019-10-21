Rails.application.routes.draw do
  resources :clients do
    resources :inspections
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'pages#index'
end
