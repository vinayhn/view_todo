Rails.application.routes.draw do
  root 'users_views#regester'

  get '/regester', to: 'users_views#regester'
  post '/regester_new', to: 'users_views#create'

  get '/login', to: 'users_views#login'
  post '/authenticate', to: 'users_views#authenticate'

  post '/logout', to: 'users_views#logout'

  post '/send_new_password_email', to: 'users_views#send_new_password_email'
  post '/edit_task', to: 'tasks_views#edit_task'


  get '/view_tasks', to: 'tasks_views#view_tasks'

  get '/edit_one_task', to: 'tasks_views#edit_one_task'
  post '/update_edit_task', to: 'tasks_views#edit_task'

  post '/id', to: 'tasks_views#delete_task'
  
  get '/add_task', to: 'tasks_views#add_task'
  post '/add_new_task', to: 'tasks_views#add_new_task'

  get '/forgot_password', to: 'users_views#forgot_password'
  post '/change_password', to: 'users_views#send_new_password_email'


   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
