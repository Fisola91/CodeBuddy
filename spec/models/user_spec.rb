require 'rails_helper'

RSpec.describe User, type: :model do
  describe "associations" do
    it { is_expected.to have_many(:chatrooms_as_user_1).class_name("Chatroom") }
    it { is_expected.to have_many(:chatrooms_as_user_2).class_name("Chatroom") }
  end
end
