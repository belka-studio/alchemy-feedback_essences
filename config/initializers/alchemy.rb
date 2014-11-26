
Alchemy::Modules.register_module({
  name: 'feedbacks',
  engine_name: 'alchemy_feedback_essences',   # The engine_name set in your Rails::Engine class.
  order: 1,                             # The position in main navigation, if you have more than 1 module.
    navigation: {
    name: 'modules.feedbacks',           # The name in the main navigation (translated via I18n).
    controller: '/admin/feedbacks',      # The controller that will be used.
    action: 'index',                    # The controller action that will be used.
    icon: 'module_icon',                # Class of icon that will be rendered as navigation icon.
    sub_navigation: [
      {
          name: 'modules.feedbacks',       # The name for the subnavigation tab (translated via I18n).
          controller: '/admin/feedbacks',  # Controller that will be used.
          action: 'index'                 # Controller action that will be used.
      }
    ]
}
})

# Loading authorization rules and register them to auth engine instance
Alchemy.register_ability AlchemyFeedbackEssences::Ability
# Alchemy::AuthEngine.get_instance.load(File.join(File.dirname(__FILE__), '../../lib/alchemy-feedback_essences/ability.rb'))