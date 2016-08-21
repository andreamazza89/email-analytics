describe EmailEvent, '#create_email_event' do
  
  let(:sample_event) { { 'Address'   => 'House', 
                         'EmailType' => 'Notification',
                         'Event'     => 'send',
                         'timestamp' => 123456 } }

  it 'extracts and persists email event data' do
p EmailEvent.first
    EmailEvent.create_email_event(sample_event)
p EmailEvent.first
    expect(EmailEvent.first.address).to eq(sample_event['Address'])
    expect(EmailEvent.first.email_type).to eq(sample_event['EmailType'])
    expect(EmailEvent.first.event).to eq(sample_event['Event'])
    expect(EmailEvent.first.timestamp).to eq(sample_event['Timestamp'])
  end

end
