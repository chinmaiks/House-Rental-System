Rails.application.routes.draw do
  
  get 'househunter/search'
  get 'user/index'
  get 'user/new'


  resources :inquiryreplies
  resources :inquirydetails
  resources :potentialbuyers
  resources :houses
  resources :companies
  devise_for :users
  match '/user', :to => 'user#index',    :as => :user,         :via => :get
  match '/user/:id', :to => 'user#delete', :as => :destroy_user, :via => :delete
  match '/user/create', :to => 'user#create', :as => :create_user, :via => :post
  root 'home#index'
end
