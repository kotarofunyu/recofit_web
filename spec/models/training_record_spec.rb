require 'rails_helper'
RSpec.describe TrainingRecord, type: :model do
    it "is valid?" do
        record = TrainingRecord.new(
            comment: "comment",
            picture: "",
            event_attributes: [
                name: "ベンチプレス",
                set_datum_attributes: [
                    weight: "30",
                    rep: "2.5",
                    set: "20"
                ]
            ]
        )
        expect(record).to be_valid
    end
end
