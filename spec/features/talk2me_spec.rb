feature "Homepage" do
  scenario "Show user add_message_and_submit and allow messages to be sent" do
    visit("/")
    expect(page).to have_content "TALK2ME"
    fill_in "message", with: "Talk to me"
    click_button "Send"
    
  end
end

feature "Message" do
  scenario "Display messages on add_message_and_submit" do
    add_message_and_submit
    expect(page).to have_content "Talk to me"
    end

    scenario "Display multipe messages" do
      add_message_and_submit
      fill_in "message", with: "Keep talking to me"
      click_button("Send")
      expect(page).to have_content "Talk to me"
      expect(page).to have_content "Keep talking to me"
    end

    scenario "Will only display first twenty characters of each message" do
      add_message_and_submit
      fill_in "message", with: "Keep talking to me Subomi"
      click_button("Send")
      expect(page).to have_content "Talk to me"
      expect(page).to have_content "Keep talking to me S"
    end

    scenario 'will display an id with the message' do
      add_message_and_submit
      expect(page).to have_content "8 Talk to me"
    end

  end
