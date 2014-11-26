Rails.application.routes.draw do
  post '/feedbacks' => 'alchemy_feedback_essences/feedbacks#create', :as => :feedbacks
  # namespace :alchemy_feedback_essences do
  #   resources :feedbacks, only: [:create]
  # end

  namespace :admin do
    resources :feedbacks
  end
end