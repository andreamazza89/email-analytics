describe Analytics, '#emails_sent' do

  context 'with no ~sent~ email_events' do
    it 'returns the total number of emails sent' do
      expect(subject.emails_sent).to eq(0)
    end
  end

  context 'with one ~sent~ email_event' do
    it 'returns the total number of emails sent' do
      create_email_events(quantity: 1, event: 'send')
      expect(subject.emails_sent).to eq(1)
    end
  end

  context 'with two ~sent~ email_events' do
    it 'returns the total number of emails sent' do
      create_email_events(quantity: 2, event: 'send')
      expect(subject.emails_sent).to eq(2)
    end
  end
end

describe Analytics, '#emails_opened' do

  context 'with no ~opened~ email_events' do
    it 'returns the total number of emails opened' do
      expect(subject.emails_opened).to eq(0)
    end
  end

  context 'with one ~opened~ email_event' do
    it 'returns the total number of emails opened' do
      create_email_events(quantity: 1, event: 'open')
      expect(subject.emails_opened).to eq(1)
    end
  end

  context 'with two ~opened~ email_events' do
    it 'returns the total number of emails opened' do
      create_email_events(quantity: 2, event: 'open')
      expect(subject.emails_opened).to eq(2)
    end
  end
end

describe Analytics, '#emails_clicked' do

  context 'with no ~clicked~ email_events' do
    it 'returns the total number of emails clicked' do
      expect(subject.emails_clicked).to eq(0)
    end
  end

  context 'with one ~clicked~ email_event' do
    it 'returns the total number of emails clicked' do
      create_email_events(quantity: j, event: 'click')
      expect(subject.emails_clicked).to eq(1)
    end
  end

  context 'with two ~clicked~ email_events' do
    it 'returns the total number of emails clicked' do
      create_email_events(quantity: 2, event: 'click')
      expect(subject.emails_clicked).to eq(2)
    end
  end
end

describe Analytics, '#open_rate' do

  context 'with no ~opened~ email_events' do
    it 'returns 0' do
      expect(subject.open_rate('Shipment')).to eq(0)
    end
  end

  context 'with one ~opened~ email_event and three ~sent~ email_events' do
    it 'returns 33' do
      create_email_events(quantity: 3, event: 'send')
      create_email_events(quantity: 1, event: 'open')
      expect(subject.open_rate('Shipment')).to eq(33)
    end
  end
end

describe Analytics, '#click_rate' do

  context 'with no ~clicked~ email_events' do
    it 'returns 0' do
      expect(subject.click_rate('Shipment')).to eq(0)
    end
  end

  context 'with one ~clicked~ email_event and three ~sent~ email_events' do
    it 'returns 33' do
      create_email_events(quantity: 3, event: 'send')
      create_email_events(quantity: 1, event: 'click')
      expect(subject.click_rate('Shipment')).to eq(33)
    end
  end
end

xdescribe Analytics, '#email_types' do

  context 'with no email_events' do
    it 'returns an empty array' do
      expect(subject.email_types).to eq([])
    end
  end

  context 'with a number of email_events' do
    it 'returns an array containing unique email_types' do
      create_sent_email_events(3)
      expect(subject.click_rate('Shipment')).to eq(33)
    end
  end
end
