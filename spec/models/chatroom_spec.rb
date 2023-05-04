require 'rails_helper'

RSpec.describe Chatroom, type: :model do
  describe "associations" do
    it { is_expected.to belong_to(:user_1).class_name("User") }
    it { is_expected.to belong_to(:user_2).class_name("User") }
  end
end
