Rails.application.routes.draw do

  get 'home/top' => 'homes#top'
  get 'home/about' => 'homes#about'
  devise_for :users

  root to: 'homes#top'

  resources :books
  resources :users, only: [:show, :edit, :update, :index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
