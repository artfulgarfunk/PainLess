require 'rails_helper'

feature 'Trigger Foods' do
  context "No data yet" do
    scenario "Trigger foods relationship page should display no results yet" do
      sign_up
      click_link_or_button 'View Potential Trigger Foods'
      expect(current_path).to eq results_path
      expect(page).to have_content 'No Results Yet'
    end
  end

  context "Viewing Results" do
    scenario "Display previous day's food when today's pain is 10" do
      sign_up
      log_painscore
      log_foodlog('hamburger')
      log_activity
      log_painscore(10,"2017-03-17")
      log_foodlog
      log_activity
      click_link_or_button 'View Potential Trigger Foods'
      expect(page).to have_content 'hamburger'
    end

    scenario "Display all foods that cause a pain score of 10" do
      sign_up
      log_painscore
      log_foodlog('hamburger')
      log_activity
      log_painscore(10,"2017-03-17")
      log_foodlog('wheat')
      log_activity
      log_painscore(10,"2017-03-17")
      log_foodlog('beef')
      log_activity
      click_link_or_button 'View Potential Trigger Foods'
      expect(page).not_to have_content('hamburger')
      expect(page).to have_content('wheat')
      expect(page).to have_content('beef')
  end
end

end
