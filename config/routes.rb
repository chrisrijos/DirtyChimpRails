Rails.application.routes.draw do
  
  resources :video, only: [:new, :create]
  
  root 'video#index'
  
  get 'video/index'

  get 'video/new'

  get 'video/show'

  get 'video/edit'

  get 'video/delete'
  
  get 'video/create'

  post 'video/new'
  
  
end
