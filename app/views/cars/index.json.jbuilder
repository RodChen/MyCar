json.array!(@cars) do |car|
  json.extract! car, :id, :brand, :model, :year, :rentaldates, :price, :location, :auto_transmission, :mileage, :color, :image_url, :remarks
  json.url car_url(car, format: :json)
end
