
# json.set! :training_record do
    # トレーニング記録
    json.set do
        json.array! @set do |set|
            json.(set, :weight, :created_at)
        end
    end
# end