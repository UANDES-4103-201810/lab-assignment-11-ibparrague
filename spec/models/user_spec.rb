require 'rails_helper'
RSpec.describe User, type: :model do
  it "test user" do
    @user = create(:user)
    expect(@user).to be_valid
  end
  it "test username" do
    @user = create(:user, username: "asdasd")
    @user2 = build(:user, username: "asdasd")
    expect(@user2).to_not be_valid
  end
  it "test user email" do
    @user = create(:user, email: "byrnferri@gmail.com")
    @user2 = build(:user, email: "byrnferri@gmail.com")
    expect(@user2).to_not be_valid
  end
  it "test user length" do
    @user = build(:user, username: "esteusernametieneclaramentemasdebeinteletras")
    expect(@user).to_not be_valid
  end
end