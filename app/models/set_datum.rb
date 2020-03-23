class SetDatum < ApplicationRecord
    belongs_to :event
    with_options presence: true do
        validates :weight
        validates :rep
        validates :set
    end

    # 重量は数値（少数含む）を許可する
    validates :weight, numericality: true

    # レップ数とセット数は数値 && 整数のみを許可する
    with_options numericality: { only_integer: true } do
        validates :rep
        validates :set
    end
end
