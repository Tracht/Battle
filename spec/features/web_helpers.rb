def sign_in_and_play
  visit('/')
  fill_in :Player1_name, with: 'Cat'
  fill_in :Player2_name, with: 'Dog'
  click_button 'Submit'
end

def sign_in_and_attack
  visit('/')
  fill_in :Player1_name, with: 'Cat'
  fill_in :Player2_name, with: 'Dog'
  click_button 'Submit'
  click_button 'Attack'
end
