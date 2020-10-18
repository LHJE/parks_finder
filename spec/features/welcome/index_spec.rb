require 'rails_helper'

RSpec.describe 'Welcome Index' do
  describe 'As a visitor' do
    before :each do
      @us_states =     [
            ['Alabama', 'AL'],
            ['Alaska', 'AK'],
            ['Arizona', 'AZ'],
            ['Arkansas', 'AR'],
            ['California', 'CA'],
            ['Colorado', 'CO'],
            ['Connecticut', 'CT'],
            ['Delaware', 'DE'],
            ['District of Columbia', 'DC'],
            ['Florida', 'FL'],
            ['Georgia', 'GA'],
            ['Hawaii', 'HI'],
            ['Idaho', 'ID'],
            ['Illinois', 'IL'],
            ['Indiana', 'IN'],
            ['Iowa', 'IA'],
            ['Kansas', 'KS'],
            ['Kentucky', 'KY'],
            ['Louisiana', 'LA'],
            ['Maine', 'ME'],
            ['Maryland', 'MD'],
            ['Massachusetts', 'MA'],
            ['Michigan', 'MI'],
            ['Minnesota', 'MN'],
            ['Mississippi', 'MS'],
            ['Missouri', 'MO'],
            ['Montana', 'MT'],
            ['Nebraska', 'NE'],
            ['Nevada', 'NV'],
            ['New Hampshire', 'NH'],
            ['New Jersey', 'NJ'],
            ['New Mexico', 'NM'],
            ['New York', 'NY'],
            ['North Carolina', 'NC'],
            ['North Dakota', 'ND'],
            ['Ohio', 'OH'],
            ['Oklahoma', 'OK'],
            ['Oregon', 'OR'],
            ['Pennsylvania', 'PA'],
            ['Puerto Rico', 'PR'],
            ['Rhode Island', 'RI'],
            ['South Carolina', 'SC'],
            ['South Dakota', 'SD'],
            ['Tennessee', 'TN'],
            ['Texas', 'TX'],
            ['Utah', 'UT'],
            ['Vermont', 'VT'],
            ['Virginia', 'VA'],
            ['Washington', 'WA'],
            ['West Virginia', 'WV'],
            ['Wisconsin', 'WI'],
            ['Wyoming', 'WY']
          ]
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

      expect(page).to have_content("Number of Parks: 16")
    end

    it "can see info about each park after click" do
      select('Tennessee', from: :state)
      click_button "Find Parks"

      expect(page).to have_content("Andrew Johnson National Historic Site")
      expect(page).to have_content("Andrew Johnson's complex presidency (1865-69) illustrates the Constitution")
      expect(page).to have_content("The GPS setting for Andrew Johnson NHS")
      expect(page).to have_content("Wednesday: 10:00AM - 3:00PM")
    end

    it "can click on Find Parks button for each state" do
      @us_states.each do |state|
        select(state[0], from: :state)
        click_button "Find Parks"
      end
    end
  end

end
