Rails.application.routes.draw do
  resources :purchases
  get '/cart' => 'cart#index'

  root 'home#home'
  resources :products
  devise_for :users do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  resources :charges
  resources :purchases
  resources :inventories
  resources :budgets
  resources :alerts


  get '/audit/note/' => 'audit#note'
  get '/audit/correct/' => 'audit#correct'
  get '/audit/request_doc/' => 'audit#request_doc'
  
  get '/alerts' => 'alerts#index'
  get '/alerts/new' => 'alerts#new'
  post 'alerts' => 'alerts#create'

  resources :users
  resources :conversations do
    resources :messages
  end
  

  get '/cart' => 'cart#index'
  get '/cart/clear' => 'cart#clearCart'
  get '/cart/:id' => 'cart#add'



end
