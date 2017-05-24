# feature 'Test infrastructure' do
#
#   scenario "Can run app an run page content" do
#     visit('/')
#     expect(page).to have_content('Hello World! again... and again')
#   end
#
# end

feature "Enter names" do
  scenario "Create name users and display them" do
    sign_in_and_play
    expect(page).to have_content('Trump')
    expect(page).to have_content('Putin')
  end
end
