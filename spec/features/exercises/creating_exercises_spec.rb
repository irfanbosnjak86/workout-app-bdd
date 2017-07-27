require "rails_helper"

RSpec.feature "Creating Exercise" do
  before do
    @test_user = User.create(email: "test_user@test.com", password: "12345678")
    login_as(@test_user)
  end
  
  scenario "with valid inputs" do
    visit "/"
    
    click_link "My Lounge"
    click_link "New workout"
    
    expect(page).to have_link("Back")
    
    fill_in "Duration", with: 70
    fill_in "Workout Details", with: "pushups"
    fill_in "Activity Date", with: "2017-07-27"
    
    click_button "Create Exercise"
    
    expect(page).to have_content("Exercise has been created")
    
    exercise = Exercise.last
    
    expect(current_path).to eq(user_exercise_path(@test_user, exercise))
    expect(exercise.user_id).to eq(@test_user.id)
  end
end