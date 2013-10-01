require 'active_support/configurable'

module AppfiguresApi
  def self.configure(&block)
    yield @config ||= AppfiguresApi::Configuration.new
  end

  # Global settings for Kaminari
  def self.config
    @config
  end

  class Configuration
    include ActiveSupport::Configurable
    config_accessor :username
    config_accessor :password
    config_accessor :app_key

    def param_name
      config.param_name.respond_to?(:call) ? config.param_name.call : config.param_name
    end
  end

  # this is ugly. why can't we pass the default value to config_accessor...?
  configure do |config|
    config.username = ''
    config.password = ''
    config.app_key  = ''
  end
end
