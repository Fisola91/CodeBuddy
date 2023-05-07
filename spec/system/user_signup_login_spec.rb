require "rails_helper"

RSpec.describe "User" do
  it "can sign in and see the login page" do
    username = "Fisola"
    email = "adesuyifisola@gmail.com"
    password = "123456"

    visit "/"
    click_on "Join now"
    expect(page).to have_text("Create your account")
    fill_in "Email", with: email
    fill_in 'user_password', with: password
    fill_in 'user_password_confirmation', with: password
    click_on "Sign up"

    expect(page).to have_text("I am online")
  end
end
