module Vtikit
  class OrdersResource < Resource

    # New order payload
    #{
    #    "name": "Jose Perez",
    #    "address": "7290 NW 35th Terrace , Miami, Florida 33122",
    #    "shipvia": "Delivery",
    #    "description": "Your order description",
    #    "po_number": "PO666",
    #    "line_items_attributes": [
    #        {
    #            "itemno": "00053900100",
    #            "quantity": 5,
    #            "uom": "ROLL"
    #        },
    #        {
    #            "itemno": "00053900200",
    #            "quantity": 5,
    #            "uom": "ROLL"
    #        }
    #    ]
    #}
    def create(**attributed)
      Order.new post_request("customers/orders", body: attributes).body
    end

  end
end
