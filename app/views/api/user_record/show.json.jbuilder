json.array! @records do |record|
  json.call(record, :id, :comment, :created_at)
  json.event do
    json.array! record.event do |event_item|
      json.call(event_item, :name)
      json.set do
        json.array! event_item.set_datum do |set|
          json.call(set, :weight, :rep, :set, :main, :renewal)
        end
      end
    end
  end
end
