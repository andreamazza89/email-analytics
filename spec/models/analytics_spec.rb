describe Analytics, '#emails_sent' do
  it 'returns the total number of emails sent' do
    FactoryGirl.create(:email_event, event: 'send')
    FactoryGirl.create(:email_event, event: 'click')

    expect(subject.emails_sent).to equal(1)
  end
end
