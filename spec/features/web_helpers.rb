def sign_in_and_play
  visit('/')
  fill_in('player_1', with: 'Trump')
  fill_in('player_2', with: 'Putin')
  click_button('Submit')
end
