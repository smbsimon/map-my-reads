require 'rails_helper'

describe 'book' do

  it 'should have a user_id' do
    book = Book.new(user_id: 1)
    expect(book.user_id).to eq 1
  end

  it 'should have a title' do
    book = Book.new(title: "The Iliad")
    expect(book.title).to eq "The Iliad"
  end

  it 'should have a city' do
    book = Book.new(city: "Athens")
    expect(book.city).to eq "Athens"
  end

  it "should be invalid without a user_id" do
    book = Book.new(title: "The Iliad", city: "Athens")
    expect(book).to_not be_valid
  end

  it "should be invalid without a city" do
    book = Book.new(user_id: 4, title: "Anna Karenina")
    expect(book).to_not be_valid
  end

  it "should be invalid without a title" do
    book = Book.new(user_id: 5, city: "Rome")
    expect(book).to_not be_valid
  end
end
