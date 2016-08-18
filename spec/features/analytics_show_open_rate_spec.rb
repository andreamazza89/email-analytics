feature 'Feature - analytics: open rate' do
  scenario 'Open rate is shown on analytics page, example 0' do
    visit analytics_path 
    expect(page).to have_content 'Open rate for Shipment emails is 0%'
  end

  scenario 'Open rate is shown on analytics page, example 1' do
    create_email_events(quantity: 3, email_type: 'Shipment', event: 'send')
    create_email_events(quantity: 1, email_type: 'Shipment', event: 'open')
    visit analytics_path 
    expect(page).to have_content 'Open rate for Shipment emails is 33%'
  end
end
