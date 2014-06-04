Staff::Engine.routes.draw do

  # devise_for :admins, class_name: "Staff::Admin"
  devise_for :admins, { 
    :class_name => "Staff::Admin",
    :module => :devise,
    :controllers => { :sessions => "staff/sessions" }
  }
  
  
  root to: 'pages#dashboard'

  resources :pages
  resources :html_modules

end
