def sign_in_and_play
  visit('/')
  fill_in :Player1_name, with: 'John'
  fill_in :Player2_name, with: 'Steve'
  click_button 'Submit'
end

def sign_in_and_attack
  visit('/')
  fill_in :Player1_name, with: 'John'
  fill_in :Player2_name, with: 'Steve'
  click_button 'Submit'
  click_button 'Attack'
end
