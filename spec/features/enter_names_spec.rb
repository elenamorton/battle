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
    visit('/')
    fill_in('name1', with: 'Trump')
    fill_in('name2', with: 'Putin')
    click_button('Submit')
    expect(page).to have_content('Trump')
    expect(page).to have_content('Putin')
  end
end
