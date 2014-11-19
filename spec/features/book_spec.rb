require 'rails_helper'

feature 'user visits book path' do



  # let(:wish) { Wish.create(title: 'Win the lottery', description: 'Lorem ipsum dolor…') }

  scenario 'user can move on to next page' do
    visit book_path
    expect(page).to have_css '.page_header'

    # change this!!!!
  end

end
