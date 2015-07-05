json.array!(@series) do |series|
  json.extract! series, :id, :description, :data_series
  json.url series_url(series, format: :json)
end
