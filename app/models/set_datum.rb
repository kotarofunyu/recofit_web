class SetDatum < ApplicationRecord
    belongs_to :event
    with_options presence: true do
        validates :weight
        validates :rep
        validates :set
    end
end
