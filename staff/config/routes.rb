Staff::Engine.routes.draw do

  get '/' => 'pages#dashboard'
  get '/pages' => 'pages#index'

end
