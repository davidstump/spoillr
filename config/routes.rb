Rails3BootstrapDeviseCancan::Application.routes.draw do
  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users
  resources :friendship
  match "friends" => "users#index"
end