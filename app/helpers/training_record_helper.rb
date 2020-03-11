module TrainingRecordHelper
    # 重量数値の小数点以下が０の場合に整数へ変換する
    def weightInt(weight)
        decimal = weight - weight.to_i
        decimal == 0 ? weight.to_i : weight
    end
end
