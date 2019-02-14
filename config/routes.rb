Rails.application.routes.draw do
  get 'home/index'

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  resources :users do
    resources :posts
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
  resources :assignments
  resources :students
  resources :workspace
  resources :assignments
end
