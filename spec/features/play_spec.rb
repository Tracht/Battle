feature 'Testing form' do
  scenario 'Players enter names' do
    sign_in_and_play
    expect(page).to have_content 'Cat vs. Dog'
  end
end

feature 'Testing turn message' do
  scenario "From Player 1 to Player 2's turn" do
    sign_in_and_attack
    click_button ("Next player's turn")
    expect(page).to have_content "It is Dog's turn"
  end
end
