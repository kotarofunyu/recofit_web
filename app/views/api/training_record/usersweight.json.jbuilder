
# json.set! :training_record do
    # トレーニング記録
    json.weight do
        json.array! @event do |event|
            json.(event, :weight,:created_at)
        end
    end
# end