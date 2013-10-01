
module AppfiguresApi

  class Sales < Base

    # Getting “All Time” totals
    def alltime_totals(type, product_ids, options = {})
      check_type(type)
      url = "/sales"
      options.merge!({:products => product_ids.join(";")})
      self.class.get(url, options)
    end

    # Getting Simple Totals
    def simple_totals

    end

    # Generating a Report By Product
    def report_by_product

    end

    # Generating a Report By Country
    def report_by_product

    end

    # Generating a Report By Date
    def report_by_date

    end

    # Generating a Report By Region
    def report_by_region

    end

protected

    def check_type(type)
      # TODO: move to config file
      accepted_types = %w{products products+countries countries countries+products}
      raise ArgumentError, "Type must be one of TYPE: #{accept_types}" unless accepted_types.include?(type)
    end

  end
 
end