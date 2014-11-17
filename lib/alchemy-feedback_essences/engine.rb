require "alchemy-feedback_essences/ability"

module Alchemy
  module FeedbackEssences
    class Engine < Rails::Engine
      engine_name 'alchemy_feedback_essences'
      config.mount_at = '/'

      initializer "alchemy_feedback_essences.register_ability" do
        Alchemy.register_ability Alchemy::FeedbackEssences::Ability
      end
    end
  end
end