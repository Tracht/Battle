feature 'View hit points' do
  scenario 'see Player 2 hit points' do
    sign_in_and_play
    expect(page).to have_content 'Steve: 8 Hit Points'
  end
end

# feature 'hit points' do
#   scenario 'Player 2' do
#     visit('/play')
#     expect(page).to have_content '8'
#   end
# end
