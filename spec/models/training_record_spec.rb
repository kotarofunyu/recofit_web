require 'rails_helper'
RSpec.describe TrainingRecord, type: :model do
    it "is valid?" do
        record = TrainingRecord.new(
            comment: "comment",
            picture: "",
            event_attributes: [
                name: "hogehoge"
            ]
        )
        expect(record).to be_valid
        p record.event
    end
end
