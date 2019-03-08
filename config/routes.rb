Rails.application.routes.draw do

  resources :students, only: [:new, :create]
  resources :questions, only: [:new, :create]
  resources :student_answers, only: [:new, :create]
  resources :locations, only: [:new]

end
