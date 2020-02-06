Rails.application.routes.draw do
  devise_for :admins
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'welcome#index'
  
  resources :admins do
    resources :school
    resources :student
    resources :classroom
    resources :teacher
    resources :qualification
    resources :subject
  end
  resources :school
  resources :student
  resources :teacher
  resources :subject
end
