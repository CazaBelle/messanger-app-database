feature 'message editing' do
  scenario 'user can edit messages' do
    add_message_and_submit
    click_link "Talk to me"
    click_button "edit"
    fill_in "editor", :with =>"This is an edit test"
    click_button "save"
    expect(page).to have_text "This is an edit test" 
  end
end