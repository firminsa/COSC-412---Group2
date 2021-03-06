json.array!(@inventories) do |inventory|
  json.extract! inventory, :id, :name, :description, :price, :stock
  json.url inventory_url(inventory, format: :json)
end
