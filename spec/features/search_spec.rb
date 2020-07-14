require "rails_helper"

describe "As a user" do
  it "I can search for members of a specific nation", :vcr do
    visit "/"

    within "#nation" do
      find("option[@value=fire_nation]").select_option
    end

    click_on "Search For Members"

    within ".search_results" do
      expect(page).to have_content("Number of Results: ")
      within(first(".member")) do
        expect(page).to have_content
        expect(page).to have_content
      end
    end



  end
end
