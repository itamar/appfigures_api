require 'httparty'

module AppfiguresApi

  class Base
    include HTTParty
    base_uri AppfiguresApi.config.base_uri
    format :json

    def initialize
      @auth = {:basic_auth => {
        :username => AppfiguresApi.config.username, 
        :password => AppfiguresApi.config.password
        },
        :default_params => {
          :app_key => AppfiguresApi.config.app_key
        }
      }
    end

  end
 
end