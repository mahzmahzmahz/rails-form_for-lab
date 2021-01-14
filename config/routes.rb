Rails.application.routes.draw do

  get 'student_classes/index'

  get 'student_classes/show'

  get 'student_classes/edit'

  get 'student_classes/new'

  get '/students', to: 'students#index', as: 'students'

  get '/students/new', to: 'students#new', as: 'new_student'
  post '/students', to: 'students#create'

  get '/students/:id/edit', to: 'students#edit', as: "edit_student"
  patch '/students/:id', to: 'students#update'

  get '/students/:id', to: 'students#show', as: 'student'

  delete '/students/:id', to: 'students#delete', as: 'delete_student'

  get '/school_classes', to: 'school_classes#index', as: 'school_classes'

  get '/school_classes/new', to: 'school_classes#new', as: 'new_school_class'
  post '/school_classes', to: 'school_classes#create'

  get '/school_classes/:id/edit', to: 'school_classes#edit', as: 'edit_school_class'
  patch '/school_classes/:id', to: 'school_classes#update'

  get '/school_classes/:id', to: 'school_classes#show', as: 'school_class'


end
