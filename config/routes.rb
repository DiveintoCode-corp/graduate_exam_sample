Rails.application.routes.draw do
  root 'blogs#index'

  resources :blogs, except: :index
end
