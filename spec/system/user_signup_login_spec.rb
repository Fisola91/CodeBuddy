require "rails_helper"

RSpec.describe "User" do
  it "can sign and see the login page" do
    username = "Fisola"
    email = "adesuyifisola@gmail.com"
    password = "123456"

    visit "/"
    click_on "Join now"
    fill_in "Username", with: username
    fill_in "Email", with: email
    fill_in "Email", with: password
    click_on "Next"

    # expect(page).to have_text("Creat your account")
  end

  it "can login and see the login the page" do

  end
end
