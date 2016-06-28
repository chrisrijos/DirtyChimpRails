Rails.application.routes.draw do
  
  devise_for :users
  resources :video, only: [:new, :create, :update]
  
  root 'video#index'
  
  get 'video/index'

  get 'video/new'

  get 'video/show'

  get 'video/edit'

  get 'video/delete'
  
  get 'video/create'

  post 'video/new'
  
  
end
