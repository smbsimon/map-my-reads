require 'spec_helper'

describe 'choose a location', type: :feature do

  context 'when logged in' do
    before(:each) do
      user = User.create({provider: "twitter", uid: 3, name: "Trout", oauth_token: "token", oauth_secret: "secret" })
      log_in(user)
      visit('/book')
      click_button('Next -->')
    end

    it 'can select a location' do
      fill_in('location', :with => 'coffee shop')
      click_button('Next -->')
      expect(page).to have_content('Share your book and location.')
      expect(page).to have_link('Tweet')
      expect(page).to have_link('Log Out')
    end
  end

end
