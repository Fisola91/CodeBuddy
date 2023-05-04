require 'rails_helper'

RSpec.describe Chatroom, type: :model do
  describe "associations" do
    it { should belongs_to(:user_1).class_name("User") }
  end
end
