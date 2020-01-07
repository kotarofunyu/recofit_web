class Event < ApplicationRecord
    belongs_to :training_record
    has_many :set_datum, dependent: :destroy
    accepts_nested_attributes_for :set_datum
end
