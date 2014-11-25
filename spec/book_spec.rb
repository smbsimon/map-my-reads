require 'rails_helper'

describe 'book' do

  before do
    @book = Book.create
  end

  it 'has a uid' do
    @book.uid = nil
    expect(@book).to_not be_valid
  end

end
