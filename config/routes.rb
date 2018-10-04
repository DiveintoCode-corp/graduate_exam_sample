Rails.application.routes.draw do
  root 'blogs#index'

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    passwords: 'users/passwords'
  }

  resources :blogs, except: :index, shallow: true do
    resources :comments, only: [:create, :update, :destroy]
  end

  post '/blogs/:blog_id/favorites', to: 'favorites#create', as: 'blog_favorites'
  delete '/blogs/:blog_id/favorites', to: 'favorites#destroy', as: 'blog_favorite'
end
