Rails.application.routes.draw do
  resources :grades
  resources :create_grades_tables
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
    resources :assignments
    get 'add_student', to: 'class_rooms#new_students'
    post 'new_student', to: 'class_rooms#added_students'
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

end
