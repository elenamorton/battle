feature 'Test infrastructure' do

  scenario "Can run app an run page content" do
    visit('/')
    expect(page).to have_content('Hello World! again... and again')
  end

end
