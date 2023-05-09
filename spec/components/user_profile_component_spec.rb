# frozen_string_literal: true

require "rails_helper"

RSpec.describe UserProfileComponent, type: :component do
  let(:component) { described_class.new(current_user: current_user) }
  context "with current user" do
    let(:current_user) { FactoryGirl.build(:user) }

    it "displays user's profile" do
      render_inline(component)

      expect(page).to have_text(current_user.username)
    end
  end
end
