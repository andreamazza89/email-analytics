feature 'Feature - analytics: open rate' do
  scenario 'Open rate is shown on analytics page, example 0' do
    visit analytics_path 
    expect(page).to have_content 'Open rate for Shipment emails is 0%'
  end

  scenario 'Open rate is shown on analytics page, example 1' do
    create_sent_email_events(3)
    create_opened_email_events(1)
    visit analytics_path 
    expect(page).to have_content 'Open rate for Shipment emails is 33%'
  end
end
