Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'links#index'

  resources :statistics, only: [:index]
  
  resources :links, only: [:index, :create, :short_redirect]

  get '/:short_url', to: "links#short_redirect"
end
