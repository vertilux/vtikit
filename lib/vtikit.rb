module Vtikit
  autoload :Client, "vtikit/client"

  autoload :Error, "vtikit/error"
  autoload :Object, "vtikit/object"
  autoload :Resource, "vtikit/resource"
  autoload :Collection, "vtikit/collection"

  # Recources
  autoload :InventoryResource, "vtikit/resources/inventory"
  autoload :ItemsResource, "vtikit/resources/items"
  autoload :OrdersResource, "vtikit/resources/orders"
  autoload :SalesResource, "vtikit/resources/sales"

  # Objects
  autoload :Inventory, "vtikit/objects/inventory.rb"
  autoload :Item, "vtikit/objects/item.rb"
  autoload :Order, "vtikit/objects/order.rb"
  autoload :Sales, "vtikit/objects/sales.rb"
end
