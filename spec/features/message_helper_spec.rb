def add_message_and_submit
  visit("/")
  fill_in "message", with: "Talk to me"
  click_button "Send"
end
