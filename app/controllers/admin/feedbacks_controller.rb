module Admin
  class FeedbacksController < Alchemy::Admin::ResourcesController

    def new
      @feedback = AlchemyFeedbackEssences::Feedback.new
    end

    def edit
      @feedback = AlchemyFeedbackEssences::Feedback.find(params[:id])
    end
  private
    def resource_params
      params.require(:feedback).permit(
          :name,
          :text,
          :email,
          :phone,
          :approved)
    end

  end
end