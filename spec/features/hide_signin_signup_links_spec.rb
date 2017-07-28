require "rails_helper"

RSpec.feature "Hiding signin link" do
  before do
    @test_user = User.create(first_name: "Test", last_name: "John", email: "test_user@test.com", password: "12345678")
  end
  
  scenario "upon successful singin" do
    visit "/"
    
    click_link "Sign in"
    fill_in "Email", with: @test_user.email
    fill_in "Password", with: @test_user.password
    click_button "Log in"
    
    expect(page).to have_link("Sign out")
    expect(page).not_to have_link("Sign in")
    expect(page).not_to have_link("Sign Up")
  end
end