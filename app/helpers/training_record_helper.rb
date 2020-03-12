module TrainingRecordHelper
    # 重量数値の小数点以下が０の場合に整数へ変換する
    def weight_change(weight)
        if weight.present?
            decimal = weight - weight.to_i
            decimal.zero? ? weight.to_i : weight
        else
            return 0
        end
    end
end
