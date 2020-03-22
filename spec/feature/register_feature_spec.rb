require 'rails_helper'

RSpec.feature 'ユーザー登録' do
    scenario 'ユーザー登録→一覧ページへリダイレクト' do
        visit '/'
        click_on 'ユーザー登録'
        fill_in 'user[name]', with: 'testhogehoge'
        fill_in 'user[email]', with: 'test@hoge.com'
        fill_in 'user[password]', with: 'hogepass'
        fill_in 'user[password_confirmation]', with: 'hogepass'
        click_button '登録する'
        expect(page).to have_content 'ユーザー登録が完了しました'
    end
end
