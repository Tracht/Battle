feature 'Attack' do
  scenario 'Player 1 attacks player 2' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content 'Success! Player 2 attacked!'
  end

  feature 'View hit points' do
    scenario 'see both players hit points' do
      sign_in_and_play
      click_button('Attack')
      expect(page).to have_content 'Success! Player 2 attacked! John : 100 HP Steve : 90 HP'
    end
  end


end
