feature 'Analytics' do

  scenario 'Total number of emails sent is shown on analytics page, example 0' do
    visit analytics_path
    expect(page).to have_content 'Total number of emails sent is: 0'
  end

  scenario 'Total number of emails sent is shown on analytics page, example 1' do
    FactoryGirl.create(:email_event, event: 'send')
    visit analytics_path
    expect(page).to have_content 'Total number of emails sent is: 1'
  end

  scenario 'Total number of emails sent is shown on analytics page example 2' do
    2.times { FactoryGirl.create(:email_event, event: 'send') }
    visit analytics_path
    expect(page).to have_content 'Total number of emails sent is: 2'
  end

end
