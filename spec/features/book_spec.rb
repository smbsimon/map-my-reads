require 'spec_helper'

describe 'choose a book', type: :feature do

  context 'when logged in' do
    before(:each) do
      user = User.create({provider: "twitter", uid: 2, name: "Tuna", oauth_token: "token", oauth_secret: "secret" })
      log_in(user)
    end

    xit 'can select a book' do
      fill_in('book[title]', :with => 'The Iliad')
      click_button('Create Book')
      expect(page).to have_content('Where')
      expect(page).to have_link('Log Out')
    end
  end

end
