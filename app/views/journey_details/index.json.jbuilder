json.array!(@journey_details) do |journey_detail|
  json.extract! journey_detail, :from, :to, :date, :direction
  json.url journey_detail_url(journey_detail, format: :json)
end