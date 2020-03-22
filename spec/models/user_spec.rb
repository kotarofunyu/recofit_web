require 'rails_helper'
RSpec.describe User, type: :model do
    it "フルネーム取得" do
        user = User.new(
          name: "kotaro"
        )
        expect(user.full_name).to eq "kotaro"
    end
    it "is valid" do
      user = User.new(
        name: "testhogehoge",
        email: "test@test.com",
        password: "testpass"
      )
      expect(user).to be_valid
    end
end
