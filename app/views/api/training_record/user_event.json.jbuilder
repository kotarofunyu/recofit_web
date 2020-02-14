
# json.set! :training_record do
    # トレーニング記録
    json.weight do
        json.array! @event do |event|
            # json.(event, :weight,:created_at)
            json.weight event.weight
            json.created_at event.created_at.to_s(:date)
        end
    end
# end