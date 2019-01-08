def add_message_and_submit
  visit("/")
  fill_in "message", with: "Talk to me"
  fill_in "tag", with: "Tag1"
  click_button "Send"
end
