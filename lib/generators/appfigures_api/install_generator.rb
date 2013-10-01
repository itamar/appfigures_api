require 'rails/generators'
module AppfiguresApi
  class InstallGenerator < Rails::Generators::Base
    desc "Description: Copies AppfiguresApi configuration file to your application's initializer directory."
    source_root File.join(File.dirname(__FILE__), 'templates')
    
    def copy_config_file
      template 'af_api_config.rb', 'config/initializers/af_api_config.rb'
    end

  end
end