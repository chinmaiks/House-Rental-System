Rails.application.routes.draw do
  
  resources :inquiryreplies
  resources :inquirydetails
  resources :potentialbuyers
  resources :houses
  resources :companies
  devise_for :users
  
  root 'home#index'
  #authenticated do
 	#  root :to => 'home#index'
  #end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
