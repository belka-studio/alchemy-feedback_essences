module Alchemy
  module Admin
    class FeedbacksController < ResourcesController

      def new
        @feedback = Alchemy::Feedback.new
      end

      def edit
        @feedback = Alchemy::Feedback.find(params[:id])
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
end