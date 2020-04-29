json.weight do
  json.array! @event do |event|
    json.weight event.weight
    json.main event.main
    json.renewal event.renewal
    json.created_at event.created_at.to_s(:date)
  end
end
