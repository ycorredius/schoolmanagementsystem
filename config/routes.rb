Rails.application.routes.draw do
  devise_for :admins do
    get '/', to: 'devise/session#new'
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to:'welcome#index'
  resources :admins

  resources :students
  resources :teachers
  resources :class_rooms do
    resources :students
  end
  resources :class_rooms do
    resources :gradebooks
  end

  resources :teachers do
    resources :gradebooks
  end

  resources :students do
    resources :gradebooks
  end
  resources :gradebooks do
    resources :assignments
  end

  get 'add_student', to: 'class_rooms#add_students_to_class'
end
