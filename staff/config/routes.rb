Staff::Engine.routes.draw do


  resources :pages

  get '/' => 'pages#dashboard'

end
