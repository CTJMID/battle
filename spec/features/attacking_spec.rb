require 'capybara/rspec'

feature 'Attacking' do 
    scenario 'we get confirmation that Player 2 has been attacked' do
        sign_in_and_play
        click_button 'Attack!'
        expect(page).to have_content 'Claire attacked Chris'
    end
end