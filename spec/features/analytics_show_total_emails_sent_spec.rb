feature 'Feature - analytics: total emails sent' do

  scenario 'Total number of emails sent is shown on analytics page, example 0' do
    visit analytics_path
    expect(page).to have_content 'Total number of emails sent is: 0'
  end

  scenario 'Total number of emails sent is shown on analytics page, example 1' do
    create_email_events(quantity: 1, event: 'send')
    visit analytics_path
    expect(page).to have_content 'Total number of emails sent is: 1'
  end

  scenario 'Total number of emails sent is shown on analytics page example 2' do
    create_email_events(quantity: 2, event: 'send')
    visit analytics_path
    expect(page).to have_content 'Total number of emails sent is: 2'
  end

end
