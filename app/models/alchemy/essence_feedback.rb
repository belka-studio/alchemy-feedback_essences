module Alchemy
  class EssenceFeedback < ActiveRecord::Base
    acts_as_essence ingredient_column: :post_to

    after_initialize :init

    def init
      self.post_to ||= Alchemy::FeedbackEssences.configuration.default_post_to
    end
  end
end