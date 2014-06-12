Staff::Engine.routes.draw do

  # devise_for :admins, class_name: "Staff::Admin"
  devise_for :admins, {
      :class_name => "Staff::Admin",
      :module => :devise,
      :controllers => {:sessions => "staff/sessions"}
  }


  root to: 'pages#dashboard'

  get 'pages/:id/:lang' => 'pages#show'
  get 'pages/:id/:lang/edit' => 'pages#edit'
  put 'pages/:id/:lang' => 'pages#update'

  get 'html_modules/:id/:lang' => 'html_modules#show'
  get 'html_modules/:id/:lang/edit' => 'html_modules#edit'
  put 'html_modules/:id/:lang' => 'html_modules#update'

  resources :pages
  resources :html_modules
  resources :jobs

  put 'html_modules/link/:id/:page_id' => 'html_modules#link'
  put 'html_modules/unlink/:id/:page_id' => 'html_modules#unlink'

end
