Rails.application.routes.draw do
  resources :roomapplies
  resources :posts do
  	resources :comments
  end

  get 'comments', to: 'comments#index'
  get 'apply', to: 'roomapplies#new'
  get 'occupants', to: 'occupants#index'
  resources :occupants
  
  root 'posts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
