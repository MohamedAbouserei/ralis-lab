Rails.application.routes.draw do
  resources :comments
  resources :posts
  resources :users, only: [:new, :create]
   get 'login', to: 'sessions#new'
   post 'login', to: 'sessions#create'
   get 'welcome', to: 'sessions#welcome'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  match '' => 'posts#index', :via => :get
end
