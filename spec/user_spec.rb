require 'rails_helper'

describe 'user' do

  it 'should have a uid' do
    user = User.new(uid: 1)
    expect(user.uid).to eq "1"
  end

  it 'should have a provider' do
    user = User.new(provider: "Twitter")
    expect(user.provider).to eq "Twitter"
  end

  it 'should have an image' do
    user = User.new(image: "image.png")
    expect(user.image).to eq "image.png"
  end

  it 'should have an oauth_token' do
    user = User.new(oauth_token: "jh23jk3r49")
    expect(user.oauth_token).to eq "jh23jk3r49"
  end

  it 'should have an ouath_secret' do
    user = User.new(oauth_secret: "kfnj32khfk")
    expect(user.oauth_secret).to eq "kfnj32khfk"
  end

  it "should be invalid without a uid" do
    user = User.new(name: "Jim", image: "picture.png", oauth_token: "123", oauth_secret: "ABC" )
    expect(user).to_not be_valid
  end

  it "should be invalid without a name" do
    user = User.new(uid: "5", image: "picture.png", oauth_token: "123", oauth_secret: "ABC" )
    expect(user).to_not be_valid
  end

  it "should be invalid without an image" do
    user = User.new(name: "Jim", uid: "4", oauth_token: "123", oauth_secret: "ABC" )
    expect(user).to_not be_valid
  end

  it "should be invalid without an oauth_token" do
    user = User.new(name: "Sara", uid: "5", image: "picture.png", oauth_secret: "ABC" )
    expect(user).to_not be_valid
  end

  it "should be invalid without an oauth_secret" do
    user = User.new(name: "Jim", uid: "4", image: "test.png", oauth_token: "123" )
    expect(user).to_not be_valid
  end
end
