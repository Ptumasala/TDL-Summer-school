# this is to receive tet in the chat that could change

Then (/^I Send a Chat Message with text (.*)$/) do |text_message|
    @pages.home.chatMessageInput.send_keys(text_message)
    @pages.home.chatMessageInput.send_keys(:return)
    expect(page).to have_text(text_message)
end

Then (/^I Start a New Chat with (.*)$/) do |username|
    @pages.home.friendsTab.visible?
    @pages.home.friendsTab.click
    @pages.home.friendTag.visible?
    find('span', text: username).click
end 

Then (/^I clean the direct message list$/) do
    @pages.home.friendsTab.click
    page.all(:xpath, "//button[starts-with(@class, 'close')]").each do |closeButton|
        find(:xpath, "//span[starts-with(@class, 'name')]").hover
        find(:xpath, "//button[starts-with(@class, 'close')]").click
        sleep 1
    end
end 