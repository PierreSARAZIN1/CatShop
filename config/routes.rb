Rails.application.routes.draw do
  resources :orders
  resources :items
  devise_for :users
  root to: "items#index"
  resources :cart, only: [:show, :update]
  resources :jointablecartitem, only: [:create, :update, :destroy]

  resources :user, only: [:show]

  # Ressource au sous-niveau admin
  scope 'admin', module: 'admin', as: 'admin' do
    
    resources :items
    resources :orders

  end



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
