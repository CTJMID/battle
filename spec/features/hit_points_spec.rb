require 'capybara/rspec'

feature 'Hit Points' do 
    scenario 'we see players hit points information' do
        sign_in_and_play
            expect(page).to have_content 'Chris HP 50/50'
    end
end