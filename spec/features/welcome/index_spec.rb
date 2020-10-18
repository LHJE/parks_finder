require 'rails_helper'

RSpec.describe 'Welcome Index' do
  describe 'As a visitor' do
    before :each do
      visit root_path
    end

    it "can select Tennessee from the form" do
      select('Tennessee', from: :state)
      expect(page).to have_select(:state, selected: 'Tennessee')

    end

    it "can click on Find Parks button" do
      select('Tennessee', from: :state)

      click_button "Find Parks"
    end

    it "can see total number of parks found after click" do
      select('Tennessee', from: :state)
      click_button "Find Parks"

      expect(page).to have_content("Number of Parks: 98123")
    end

    it "can see info about each park after click" do
      select('Tennessee', from: :state)
      click_button "Find Parks"

      expect(page).to have_content("Name of Park")
      expect(page).to have_content("Description of Park")
      expect(page).to have_content("direction of Park")
      expect(page).to have_content("hours of Park")
    end
  end

end
