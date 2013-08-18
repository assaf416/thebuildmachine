Forum::Application.routes.draw do
  resources :activities

  resources :todos

  resources :iterations

  resources :tasks

  resources :stories

  resources :stroys

  resources :project_templates

  resources :projects

  get "comments/index"

  get "comments/new"

  get "public/welcome"

  get "public/register"

  resources :songs do
    resources :comments
  end

  resources :instruments do
    resources :comments
  end

  resources :presets do
    resources :comments
  end
  
  
  get 'users/home_page'
  get 'users/news'
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  resources :sessions
  resources :topics
  resources :posts
  resources :users do 
    get "users/:id/home_page"
    get "users/:id/news"
    resources :presets
    resources :songs
    resources :messages
  end

  get 'users/home_page', :to => "userss#home_page"
  get 'users/news', :to => "userss#news"
  root to: 'public#welcome'
  
end
