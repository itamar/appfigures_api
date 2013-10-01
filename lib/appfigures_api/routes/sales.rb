
module AppfiguresApi

  class Sales < Base

    # Getting “All Time” totals
    def alltime_totals(type, product_ids, options = {})
      check_type(type)
      self.class.get("/sales?app_key=#{AppfiguresApi.config.app_key}&products=#{options[:products]}", options)
    end

    # Getting Simple Totals
    def simple_totals(options = {})
      # options.merge!({:products => options[:product_ids].join(";")})
      self.class.get("/sales", options)
    end

    # Generating a Report By Product
    def report_by_product(options = {})
      check_type(type)
    end

    # Generating a Report By Country
    def report_by_country(options = {})
      options.merge!({:query => {:app_key => AppfiguresApi.config.app_key, :products => options[:products]}})
      self.class.get("/sales/countries", options)
    end

    # Generating a Report By Date
    def report_by_date(options = {})
      self.class.get("/sales/dates", options)
    end

    # Generating a Report By Region
    def report_by_region(options = {})

    end

protected

    def check_type(type)
      # TODO: move to config file
      accepted_types = %w{products products+countries countries countries+products}
      raise ArgumentError, "Type must be one of TYPE: #{accept_types}" unless accepted_types.include?(type)
    end

  end
 
end