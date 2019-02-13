Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "home#index"
  get '/files' => 'files#index', as: 'files_path'
  get '/files/new' => 'files#new', as: 'new_file_path'
  post '/files' => 'files#create'

end
