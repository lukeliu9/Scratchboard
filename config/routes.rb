PmApp31::Application.routes.draw do
  get "sessions/new"

  resources :users
  resources :sessions, :only => [:new, :create, :destroy]
  resources :projects, :only => [:new, :create, :destroy]
  
  match '/getstarted',  :to => 'users#new'
  match '/signin',      :to => 'sessions#new'
  match '/signout',     :to => 'sessions#destroy'      
  match '/about',       :to => 'pages#about'
  
  root :to => 'pages#home'
  
end
