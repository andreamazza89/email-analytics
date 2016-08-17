feature 'Analytics' do

  scenario 'Total number of emails sent are shown on analytics page' do
    3.times { FactoryGirl.create :email_event }
    visit analytics_path
    expect(page).to have_content 'Total number of emails sent: 3'
  end

end
