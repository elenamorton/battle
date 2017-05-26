feature 'Attacking' do

  # As Player 1,
  # So I can lose a game of Battle,
  # I want Player 2 to attack me, and I want to get a confirmation
  scenario 'be attacked by Player 2' do
    sign_in_and_play
    click_button('Attack')
    click_link('OK')
    click_button('Attack')
    expect(page).to have_content("Trump attacked Putin")
  end

  # As Player 1,
  # So I can start to lose a game of Battle,
  # I want Player 2's attack to reduce my HP by 10
  scenario 'reduce Player 2 hit points by 10' do
    sign_in_and_play
    click_button('Attack')
    click_link('OK')
    expect(page).not_to have_content 'Putin: 60 HP'
    expect(page).to have_content 'Putin: 50 HP'
  end

end
