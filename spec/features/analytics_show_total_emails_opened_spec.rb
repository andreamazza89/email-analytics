feature 'Feature - analytics: total emails opened' do

  scenario 'Total number of emails opened is shown on analytics page, example 0' do
    visit analytics_path
    expect(page).to have_content 'Total number of emails opened is: 0'
  end

  scenario 'Total number of emails sent is shown on analytics page, example 1' do
    create_opened_email_events(1)
    visit analytics_path
    expect(page).to have_content 'Total number of emails opened is: 1'
  end

  scenario 'Total number of emails sent is shown on analytics page example 2' do
    create_opened_email_events(2)
    visit analytics_path
    expect(page).to have_content 'Total number of emails opened is: 2'
  end

end
