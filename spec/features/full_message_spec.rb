feature 'clicking link takes you to full message' do 
  scenario 'user links a truncated link ' do 
    visit('/')
    fill_in :message, with: 'This message exceeds 20 characters'
    click_button 'Send'
    click_link 'This message exceeds'
    expect(page).to have_content 'This message exceeds 20 characters'
  end 

end 