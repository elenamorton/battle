feature 'Attacking' do
  scenario 'Player 1 attacks Player 2' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content("Trump attacked Putin")
  end

  scenario 'reduce Player 2 hit points by 10' do
    sign_in_and_play
    click_button('Attack')
    expect(page).not_to have_content 'Putin: 60 HP'
    expect(page).to have_content 'Putin: 50 HP'
  end

end
