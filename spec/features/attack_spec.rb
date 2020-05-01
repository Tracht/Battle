feature 'Attack' do
  scenario 'Player 1 attacks player 2' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content 'Success! Dog was attacked!'
  end

  feature 'View hit points' do
    scenario 'See both players hit points' do
      sign_in_and_play
      click_button('Attack')
      expect(page).to have_content 'Cat: 100 HP Dog: 90 HP'
    end
  end
end
