feature 'Feature - analytics: click rate' do
  scenario 'Click rate is shown on analytics page, example 0' do

    test_email_types = ['Shipment', 'ReferAFriend', 'UserConfirmation']

    test_email_types.each do |type|
      create_email_events(quantity: 3, email_type: type, event: 'send')
      create_email_events(quantity: 1, email_type: type, event: 'click')
    end

    visit analytics_path 

    test_email_types.each do |type|
      expect(page).to have_content "Click rate for #{type} emails is 33%"
    end
  end
end
