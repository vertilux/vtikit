module Vtikit
  class InventoryResource < Resource

    def catalog(**params)
      Collection.from_response get_request("inventory/catalog", params: params), type: Inventory
    end

    def uoms(**params)
      Collection.from_response get_request("inventory/uom", params: params), type: Inventory
    end

    def uom(item, **params)
      Inventory.new get_request("inventory/uom/#{item}", params: params).body
    end

  end
end
