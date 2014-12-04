require 'spec_helper'

describe 'choose a location', type: :feature do

  context 'when logged in' do
    before(:each) do
      user = User.create({provider: "twitter", uid: 3, name: "Trout", image: "test.png", oauth_token: "token", oauth_secret: "secret" })
      log_in(user)
      visit('/books/new')
    end

    xit 'can submit a new book' do
      fill_in('book[city]', :with => 'denver')
      fill_in('book[title]', :with => 'hamlet')
      click_button('Add to My Reading History')
      expect(page).to have_content('My name is')
      expect(page).to have_content('hamlet')
    end
  end

end
