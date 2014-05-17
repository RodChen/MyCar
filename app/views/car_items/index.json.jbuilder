json.array!(@car_items) do |car_item|
  json.extract! car_item, :id, :car_id, :lease_id
  json.url car_item_url(car_item, format: :json)
end
