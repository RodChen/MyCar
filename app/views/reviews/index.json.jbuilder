json.array!(@reviews) do |review|
  json.extract! review, :id, :car_id, :ratings, :comment
  json.url review_url(review, format: :json)
end
