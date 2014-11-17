module Alchemy
  class EssenceFeedbackList < ActiveRecord::Base
    acts_as_essence ingredient_column: :per_page

    def ingredient
      Feedback.approved.limit(per_page)
    end
  end
end