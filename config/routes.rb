Rails.application.routes.draw do
  root to: 'pages#home' # => 'pages#home'
  
  namespace :api, defaults: { format: :json } do
    resources :quotes, only: [ :show ]
  end

  #root 'pages/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
