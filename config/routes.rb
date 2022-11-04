Rails.application.routes.draw do
  get 'directory', to: 'directory#index'
  resources :mentor_to_mentees
  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks',
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  resources :member_trees
  resources :alumni_assignments
  resources :mentor_assignments
  resources :mentees
  resources :mentors
  resources :alumnis
  resources :users
  root 'welcome#index'

  get 'admin', to: 'admin#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
