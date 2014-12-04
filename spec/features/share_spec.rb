require 'spec_helper'

describe 'tweet', type: :feature do

  context 'when logged in' do
    before(:each) do
      user = User.create({provider: "twitter", uid: 4, name: "Salmon", image: "test.png", oauth_token: "token", oauth_secret: "secret" })
      log_in(user)
    end

    xit 'can tweet' do
      visit('/shares/new')
      expect(page).to have_link('Tweet')
    end
  end

end
