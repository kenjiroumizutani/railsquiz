Rails.application.routes.draw do
  devise_for :users
  root 'tops#index'
  resources :tops , :only => :index
  resources :quizzes
  resources :users
  resources :answers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
