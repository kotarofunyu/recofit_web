require 'rails_helper'
RSpec.describe TrainingRecord, type: :model do
    it "is valid?" do
        record = TrainingRecord.new(
            comment: "comment",
            picture: "",
            event_attributes: [
                name: "aaaa",
                set_datum_attributes: [
                    weight: 2,
                    rep: 2,
                    set: 2
                ]
            ]
        )
        expect(record).to be_valid
        p record.event
    end
end
