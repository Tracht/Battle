feature 'Testing form' do
  scenario 'Players enter their names' do
    sign_in_and_play
    expect(page).to have_content 'John vs. Steve'
  end
end

feature 'Testing turn message' do
  scenario "Becomes player 2's turn" do
    sign_in_and_attack
    click_button ('Next player move')
    expect(page).to have_content "It is Steve's turn"
  end
end
