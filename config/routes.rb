Rails.application.routes.draw do
  root 'pages#pages'
 get '/home', to: 'pages#home'
end
