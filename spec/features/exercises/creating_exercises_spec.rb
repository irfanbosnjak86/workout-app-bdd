require "rails_helper"

RSpec.feature "Creating Exercise" do
  before do
    @test_user = User.create(first_name: "Test", last_name: "John", email: "test_user@test.com", password: "12345678")
    login_as(@test_user)
    
    visit "/"
    
    click_link "My Lounge"
    click_link "New workout"
  end
  
  scenario "with valid inputs" do
 
    
    expect(page).to have_link("Back")
    
    fill_in "Duration", with: 70
    fill_in "Workout Details", with: "pushups"
    fill_in "Activity Date", with: 3.days.ago
    
    click_button "Create Exercise"
    
    expect(page).to have_content("Exercise has been created")
    
    exercise = Exercise.last
    
    expect(current_path).to eq(user_exercise_path(@test_user, exercise))
    expect(exercise.user_id).to eq(@test_user.id)
  end
  
  scenario "with invalid inputs" do
    expect(page).to have_link("Back")
    
    fill_in "Duration", with: ""
    fill_in "Workout Details",  with: ""
    fill_in "Activity Date",  with: ""
    click_button "Create Exercise"
    
    expect(page).to have_content("Exercise has not been created")
    expect(page).to have_content("Duration in min is not a number")
    expect(page).to have_content("Workout details can't be blank")
    expect(page).to have_content("Activity date can't be blank")
  end
end