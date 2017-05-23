# feature 'Test infrastructure' do
#
#   scenario "Can run app an run page content" do
#     visit('/')
#     expect(page).to have_content('Hello World! again... and again')
#   end
#
# end

feature "Game setup" do
  scenario "Create name users and display them" do
    visit('/')
    fill_in('name', with: 'Trump')
    click_button('Submit')
    expect(page).to have_content('Trump')
  end
end
