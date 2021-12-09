require "faraday"
require "faraday_middleware"

module Vtikit
  class Client

    DEFAULT_TIMEOUT = 120
    BASE_URL = "https://api.vertilux.com/api/v1"

    attr_reader :api_key, :adapter

    def initialize(api_key:, adapter: Faraday.default_adapter)
      @api_key = api_key
      @adapter = adapter
    end

    def inventory
      InventoryResource.new(self)
    end

    def items
      ItemsResource.new(self)
    end

    def orders
      OrdersResource.new(self)
    end

    def sales
      SalesResource.new(self)
    end

    def connection
      @connection ||= Faraday.new do |con|
        con.url_prefix = BASE_URL
        con.request :json
        con.response :json, content_type: "application/json"
        con.adapter adapter
      end
    end

  end
end
