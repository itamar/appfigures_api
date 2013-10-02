require 'active_support/configurable'

module AppfiguresApi
  def self.configure(&block)
    yield @config ||= AppfiguresApi::Configuration.new
  end

  def self.config
    @config
  end

  class Configuration
    include ActiveSupport::Configurable
    config_accessor :username
    config_accessor :password
    config_accessor :app_key
    config_accessor :base_uri

    def param_name
      config.param_name.respond_to?(:call) ? config.param_name.call : config.param_name
    end
  end

  # TODO: set the default value in config_accessor
  configure do |config|
    config.username = ''
    config.password = ''
    config.app_key  = ''
    config.base_uri = 'https://api.appfigures.com/v2'
  end
end
