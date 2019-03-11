Rails.application.routes.draw do

  devise_for :users
  get 'results/index'

  resources :students, only: [:new, :create]
  resources :questions, only: [:new, :create]
  resources :student_answers, only: [:new, :create]
  resources :locations, only: [:new]
  resources :results

  root 'students#new'
  get '/delete', to: 'questions#delete'

end
