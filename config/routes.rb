Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "home#index"
  get '/assignments' => 'assignments#index', as: 'assignments'
  get '/assignments/new' => 'assignments#new', as: 'new_assignment'
  post '/assignments' => 'assignments#create'

end
