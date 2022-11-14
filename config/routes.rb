Rails.application.routes.draw do
  get 'directory', to: 'directory#index'
  resources :mentor_to_mentees
  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks',
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  resources :groups
  resources :group_to_users
  resources :users
  root 'welcome#index'

  get 'admin', to: 'admin#index'
  get 'directory', to: 'directory#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  #https://stackoverflow.com/questions/16289299/rails-how-to-destroy-users-created-under-devise
  #match 'users/:id' => 'users#destroy', :via => :delete, :as => :admin_destroy_user
end
