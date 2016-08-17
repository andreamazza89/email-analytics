describe Analytics, '#emails_sent' do

  context 'with zero ~sent~ email_events' do
    it 'returns the total number of emails sent' do
      expect(subject.emails_sent).to eq(0)
    end
  end

  context 'with one ~sent~ email_event' do
    it 'returns the total number of emails sent' do
      FactoryGirl.create(:email_event, event: 'send')
      expect(subject.emails_sent).to eq(1)
    end
  end

  context 'with two ~sent~ email_events' do
    it 'returns the total number of emails sent' do
      2.times { FactoryGirl.create(:email_event, event: 'send') }
      expect(subject.emails_sent).to eq(2)
    end
  end
end
