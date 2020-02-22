json.set! :training_record do
    # トレーニング記録
    json.record do
        json.array! @training_record do |record|
            json.call(record, :id, :comment)
            # 種目
            json.event do
                json.array! record.event do |event_item|
                    json.call(event_item, :name)
                    # セット
                    json.set do
                        json.array! event_item.set_datum do |set|
                            json.call(set, :weight, :rep, :set)
                        end
                    end
                end
            end
        end
    end
end
