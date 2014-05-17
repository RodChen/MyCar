json.array!(@leases) do |lease|
  json.extract! lease, :id
  json.url lease_url(lease, format: :json)
end
