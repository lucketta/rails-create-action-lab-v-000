Rails.application.routes.draw do
  resources :students, only: [:index]
  get '/student/new', to: 'students#new', as: "new_student"
  get '/student/:id', to: 'students#show', as: 'student'
  post '/student', to: 'students#create', as: "create_student"

end
