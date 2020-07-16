Rails.application.routes.draw do
  get '/teachers', to: 'teachers#index'
  get '/teachers/:id', to: 'teachers#show'
  get '/students', to: 'students#index'
  get '/students/:id', to: 'students#show'
  get '/conversations', to: 'conversations#index'
  get '/conversations/:id', to: 'conversations#show'
  get '/teacherclasses/', to: 'teacher_classes#index'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
