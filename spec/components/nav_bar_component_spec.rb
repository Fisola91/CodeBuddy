# frozen_string_literal: true

require "rails_helper"

RSpec.describe NavBarComponent, type: :component do
  let(:component) { described_class.new(current_user: current_user) }
  let(:current_user) { nil }

  it "displays guest user's navigaton bar" do
    render_inline(component)

    expect(page).to have_link("Login")
    expect(page).to have_link("Join now")
    expect(page).to have_link("About us")
    expect(page).to have_link("Contact us")
  end

  context "with current user" do
    let(:current_user) { FactoryGirl.build(:user) }

    it "displays autheticated user's navigation bar" do
      render_inline(component)

      expect(page).to have_link("Sign out")
      expect(page).to have_link("Profile")
    end
  end
end
