module Vtikit
  class ItemsResource < Resource

    def list(**params)
      Collection.from_response get_request("customers/items", params: params), type: Item
    end

    def retreive(id, **params)
      Item.new get_request("customers/items/#{id}", params: params).body
    end

    def label(tracking, **params)
      Item.new get_request("customers/labels/#{tracking}", params: params).body
    end

  end
end
