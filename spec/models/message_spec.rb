require 'rails_helper'
RSpec.describe Message, type: :model do
  it "test message" do
    @user = create(:user)
    @message = create(:message, user: @user)
    expect(@message).to be_valid
  end
  it "test message user id nil " do
    @message = build(:message, user_id: nil)
    expect(@message).to_not be_valid
  end
  it "test message user no existe" do
    @message = build(:message, user_id: 9999)
    expect(@message).to_not be_valid
  end
end
