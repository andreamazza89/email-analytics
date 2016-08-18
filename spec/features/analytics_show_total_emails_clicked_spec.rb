feature 'Feature - analytics: total emails clicked' do

  scenario 'Total number of emails clicked is shown on analytics page, example 0' do
    visit analytics_path
    expect(page).to have_content 'Total number of emails clicked is: 0'
  end

  scenario 'Total number of emails clicked is shown on analytics page example 2' do
    create_email_events(quantity: 2, event: 'click')
    visit analytics_path
    expect(page).to have_content 'Total number of emails clicked is: 2'
  end

end
