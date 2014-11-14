Alchemy::Engine.routes.draw do
  resources :feedbacks, only: [:create]

  namespace :admin do
    resources :feedbacks
  end
end