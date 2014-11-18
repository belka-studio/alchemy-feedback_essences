require "alchemy-feedback_essences/ability"

module AlchemyFeedbackEssences
  class Engine < Rails::Engine
    engine_name 'alchemy_feedback_essences'
    config.mount_at = '/'

    initializer "alchemy_feedback_essences.register_ability" do
      Alchemy.register_ability AlchemyFeedbackEssences::Ability
    end
  end
end