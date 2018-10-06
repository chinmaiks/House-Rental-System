Rails.application.routes.draw do
  
  get 'househunter/search'
  get 'user/index'
  resources :inquiryreplies
  resources :inquirydetails
  resources :potentialbuyers
  resources :houses
  resources :companies
  devise_for :users
  match '/user', :to => 'user#index',    :as => :user,         :via => :get
  match '/user/:id', :to => 'user#delete', :as => :destroy_user, :via => :delete
  root 'home#index'
  #get 'househunter/search'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
