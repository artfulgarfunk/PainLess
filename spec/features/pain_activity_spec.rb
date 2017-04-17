require 'rails_helper'

feature 'Pain Activity' do
  context "No Pain Activity yet" do
    scenario "Pain Activity page should display no results yet" do
      sign_up
      click_link_or_button 'View Exertion/Pain Relationship'
      expect(current_path).to eq pain_activity_index_path
      expect(page).to have_content 'No Results Yet'
    end
  end

end
