module Vtikit
  class SalesResource < Resource

    def history(**params)
      Collection.from_response get_request("customers/sales_history", params: params)
    end

  end
end
