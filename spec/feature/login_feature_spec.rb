require 'rails_helper'

RSpec.feature 'ログインとログアウト' do
    background do
        User.create!(name: 'testhogehoge', email: 'test@testdayo.test', password: '12345')
    end
    scenario 'ログインしてログアウト' do
        visit '/login'
        fill_in 'session_email', with: 'test@testdayo.test'
        fill_in 'session_password', with: '12345'
        click_button 'ログイン'
        expect(page).to have_content 'ログインしました'
        click_on 'ログアウト'
        expect(page).to have_content 'トレーニングを記録しよう'
    end
end
