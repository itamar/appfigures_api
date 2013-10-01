require 'httparty'

module AppfiguresApi

  class Base
    include HTTParty
    base_uri "https://api.appfigures.com/v2"
    # debug_output $stderr
    basic_auth AppfiguresApi.config.username, AppfiguresApi.config.password
    default_params :api_key => AppfiguresApi.config.app_key
    format :json

    # TODO: move to config file
    AVAILABLE_TYPES = {
      :DATES => "dates",
      :COUNTRIES => "countries", 
      :PRODUCTS => "products",
      :REGION => "regions",
      :DATES_PRODUCTS => "dates+products",
      :PRODUCTS_DATES => "products+dates", 
      :COUNTRIES_PRODUCTS => "countries+products", 
      :PRODUCTS_COUNTRIES => "products+countries",
      :COUNTRIES_DATES => "countries+dates", 
      :DATES_COUNTRIES => "dates+countries"
    }

    # TODO: move to config file
    AVAILABLE_DATASOURCES = {
      :DAILY => "daily", 
      :WEEKLY => "weekly", 
      :MONTHLY => "monthly"
    }

    def initialize(username = '', password = '')
      # @auth = {:username => username, :password => password}
    end

  end
 
end