Rails.application.routes.draw do
  resources :add_assignment_student_tables
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
    resources :students do
      resources :assignments
    end
  end
  resources :class_rooms do
    resources :gradebooks
    get 'add_student', to: 'class_rooms#new_students'
    post 'new_student', to: 'class_rooms#added_students'
  end
  resources :class_rooms do 
    resources :assignments
    post "class_rooms/:id/assignments/new", to: "assignments#create"
  end

  resources :teachers do
    resources :gradebooks
  end

  resources :students do
    resources :gradebooks
    resources :assignments
  end
  resources :gradebooks do
    resources :assignments
  end
end
