Rails.application.routes.draw do
  resources :student_classes
  resources :conversations
  resources :students
  resources :teacher_classes
  resources :klasses
  resources :teachers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
