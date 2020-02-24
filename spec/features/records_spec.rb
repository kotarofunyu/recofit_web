require 'rails_helper'

RSpec.feature "Records", type: :feature do
  pending "add some scenarios (or delete) #{__FILE__}"
  scenario "user creates a new record" do
    @user = User.create(
      name: "kotarotest",
      email: "kotarotest@test.com",
      password: "kotarotest"
    )

    visit '/login'

    fill_in "session[email]", with:"kotarotest@test.com"
    fill_in "session[password]", with:"kotarotest"
    click_button "ログイン"
    
    expect {
      visit '/index'

      fill_in "training_record[:comment]", with: "iwassotired"
      fill_in "training_record[event_attributes][0]name", with: "レッグ・カール"
      fill_in "training_record[event_attributes][0][part]", with: "広背筋"
      fill_in "training_record[event_attributes][0][set_datum_attributes][0][weight]", with: "40"
      fill_in "training_record[event_attributes][0][set_datum_attributes][0][rep]", with: "10"
      fill_in "training_record[event_attributes][0][set_datum_attributes][0][part]", with: "3"
      check "training_record[event_attributes][0][set_datum_attributes][0][main]"
      click_button "記録する"
    }.to change(@user.training_record, :count).by(1)


  end
end
