module AlchemyFeedbackEssences
  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.configuration=(config)
    @configuration = config
  end

  def self.configure
    yield configuration
  end

  class Configuration
    attr_accessor \
      :default_post_to

    def initialize
      @default_post_to = ''#feedbacks_path
    end
  end
end