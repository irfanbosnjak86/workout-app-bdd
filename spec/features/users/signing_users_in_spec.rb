require "rails_helper"
 
RSpec.feature "Users signin" do
 
  before do
   
    @test = User.create!(email: "test@example.com", password: "password")
 
  end
 
  scenario "with valid credentials" do
   
    visit "/"
   
    click_link "Sign in"
   
    fill_in "Email", with: @test.email
   
    fill_in "Password",  with: @test.password
   
    click_button "Log in"
   
    expect(page).to have_content("Signed in successfully.")
   
    expect(page).to have_content("Signed in as #{@test.email}")
 
  end
end