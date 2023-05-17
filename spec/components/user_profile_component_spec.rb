# frozen_string_literal: true

require "rails_helper"

RSpec.describe UserProfileComponent, type: :component do
  let(:component) { described_class.new(current_user: current_user) }
  context "with current user" do
    let(:current_user) { FactoryBot.build(:user) }

    it "displays user's profile" do
      render_inline(component)

      expect(page).to have_text(current_user.username)
      expect(page).to have_text(current_user.first_name)
      expect(page).to have_text(current_user.last_name)
      expect(page).to have_link("🖉")
      expect(page).to have_text(current_user.bio)
      expect(page).to have_text(current_user.topic_interest)
      expect(page).to have_text("Topic of interest")
    end
  end
end
