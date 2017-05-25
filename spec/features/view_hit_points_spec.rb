feature 'View hit points' do
  scenario 'View player 2 hit points' do
    sign_in_and_play
    expect(page).to have_content('Putin: 60 HP')
  end
end
