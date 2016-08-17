feature 'Analytics' do

  scenario 'Total number of emails sent is shown on analytics page, example 1' do
    FactoryGirl.create(:email_event, event: 'send')
    FactoryGirl.create(:email_event, event: 'click')
    visit analytics_path
    expect(page).to have_content 'Total number of emails sent: 1'
  end

  scenario 'Total number of emails sent is shown on analytics page example 2' do
    2.times { FactoryGirl.create(:email_event, event: 'send') }
    FactoryGirl.create(:email_event, event: 'click')
    visit analytics_path
    expect(page).to have_content 'Total number of emails sent: 2'
  end

end
