Rails.application.routes.draw do
  namespace :alchemy_feedback_essences do
    resources :feedbacks, only: [:create]
  end

  namespace :alchemy do
    namespace :admin do
      resources :feedbacks
    end
  end
end