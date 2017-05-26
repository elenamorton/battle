feature 'Switch turns' do
  scenario 'start of the game' do
    sign_in_and_play
    expect(page).to have_content "Trump's turn"
  end

  scenario 'after player 1 attacks player 2' do
    sign_in_and_play
    click_button('Attack')
    click_link('OK')
    click_button('Attack')
    click_link('OK')
    expect(page).not_to have_content "Putin's turn"
    expect(page).to have_content "Trump's turn"
  end

end
