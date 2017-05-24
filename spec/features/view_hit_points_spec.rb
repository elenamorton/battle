feature 'View hit points' do
  scenario 'View player 2 hit points' do
    visit('/')
    fill_in('player_1_name', with: 'Trump')
    fill_in('player_2_name', with: 'Putin')
    click_button('Submit')

    expect(page).to have_content('Trump vs. Putin Putin: 60HP')
  end
end
