class Event < ApplicationRecord
    with_options presence: true do
        validates :name
        validates :set_datum
    end
    belongs_to :training_record
    has_many :set_datum, dependent: :destroy
    accepts_nested_attributes_for :set_datum, allow_destroy: true
end
