feature 'deletes message' do 
  scenario 'user can delete a message' do
    add_message_and_submit
    click_link 'Talk to me'
    click_button 'delete'
    expect(page).to have_no_content 'Talk to me'
  end
end