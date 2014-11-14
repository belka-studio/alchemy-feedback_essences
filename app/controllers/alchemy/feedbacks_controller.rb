module Alchemy
  class FeedbacksController < ActionController::Base
    def create
      @feedback = Alchemy::Feedback.new(feedback_params)
      @feedback.save
      render :json => {
        :status => @feedback.errors.blank? ? 'ok' : 'fail',
        :errors => @feedback.errors
      }
    end

private
    def feedback_params
      params.require(:feedback).permit(
          :name,
          :text,
          :email,
          :phone)
    end
  end
end