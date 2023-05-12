require "rails_helper"

RSpec.describe "User" do
  let(:current_user) { FactoryGirl.build(:user) }
  it "can sign in and see the profile page" do
    username = "Fisola"
    email = "adesuyifisola@gmail.com"
    password = "123456"

    visit "/"
    click_on "Join now"
    expect(page).to have_text("Create your account")
    fill_in "Username", with: username
    fill_in "Email", with: email
    fill_in 'user_password', with: password
    fill_in 'user_password_confirmation', with: password
    click_on "Sign up"

    expect(page).to have_text(username)
  end

  it "can login and see the profile page" do
    username = "Fisola"
    email = "adesuyifisola1@gmail.com"
    password = "123456"

    visit "/"
    click_on "Login"
    fill_in "Email", with: email
    fill_in 'user_password', with: password
    check "user_remember_me"
    click_on "Log in"

    expect(page).to have_link("Sign up")
    expect(page).to have_link("Forgot your password?")
  end
end
