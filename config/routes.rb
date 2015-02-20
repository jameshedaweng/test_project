Rails.application.routes.draw do
  
  mount Attachinary::Engine => "/attachinary"
  resources :articles do
    resources :comments, shallow: true
  end

  devise_for :users
  devise_scope :user do
    get '/login' => 'devise/sessions#new'
    get '/logout' => 'devise/sessions#destroy'
  end
  resources :user, :controller => "user"

  get 'static_pages/home' 
  root :to => "static_pages#home"
end
