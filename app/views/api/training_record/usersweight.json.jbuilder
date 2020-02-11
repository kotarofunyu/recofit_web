
# json.set! :training_record do
    # トレーニング記録
    json.event do
        json.array! @event do |event|
            json.(event, :name)
            json.set do
                json.array! event.set_datum do |set|
                    json.(set, :weight)
                end
            end
        end
    end
# end