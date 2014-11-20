require 'spec_helper'

describe 'tweet', type: :feature do

  context 'when logged in' do
    before(:each) do
      user = User.create({provider: "twitter", uid: 4, name: "Salmon", oauth_token: "token", oauth_secret: "secret" })
      log_in(user)
    end

    it 'can tweet' do
      visit('/books/new')
      fill_in('book', :with => 'book title')
      click_button('Next -->')
      visit('/locations/new')
      fill_in('location', :with => 'location title')
      click_button('Next -->')
      expect(page).to have_content('Share your book and location.')
      expect(page).to have_link('Tweet')
      expect(page).to have_link('Log Out')
    end
  end

end
