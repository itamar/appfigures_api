
module AppfiguresApi

  class Sales < Base

    # Getting “All Time” totals
    def totals(type, options = {}, &block)
      check_type(type)
      self.class.get("/sales", @auth.merge!({:query => options}))
    end

    # Generating a Report By Product
    def report_by_product(start_date, end_date, options = {})
      self.class.get("/sales/products/#{start_date}/#{end_date}", @auth.merge!({:query => options}))
    end

    # Generating a Report By Country
    def report_by_country(options = {})
      self.class.get("/sales/countries", @auth.merge!({:query => options}))
    end

    # Generating a Report By Date
    def report_by_date(options = {})
      self.class.get("/sales/dates", @auth.merge!({:query => options}))
    end

    # Generating a Report By Region
    def report_by_region(options = {})
      self.class.get("/sales/regions", @auth.merge!({:query => options}))
    end

protected

    def check_type(type)
      # TODO: move to config file and tests for it
      accepted_types = %w{products products+countries countries countries+products}
      raise ArgumentError, "Type must be one of TYPE: #{accept_types}" unless accepted_types.include?(type)
    end

  end
 
end