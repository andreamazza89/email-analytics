describe Analytics, '#emails_sent' do

  context 'with no ~sent~ email_events' do
    it 'returns the total number of emails sent' do
      expect(subject.emails_sent).to eq(0)
    end
  end

  context 'with one ~sent~ email_event' do
    it 'returns the total number of emails sent' do
      create_sent_email_events(1)
      expect(subject.emails_sent).to eq(1)
    end
  end

  context 'with two ~sent~ email_events' do
    it 'returns the total number of emails sent' do
      create_sent_email_events(2)
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
      create_opened_email_events(1)
      expect(subject.emails_opened).to eq(1)
    end
  end

  context 'with two ~opened~ email_events' do
    it 'returns the total number of emails opened' do
      create_opened_email_events(2)
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
      create_clicked_email_events(1)
      expect(subject.emails_clicked).to eq(1)
    end
  end

  context 'with two ~clicked~ email_events' do
    it 'returns the total number of emails clicked' do
      create_clicked_email_events(2)
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
      create_sent_email_events(3)
      create_opened_email_events(1)
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
      create_sent_email_events(3)
      create_clicked_email_events(1)
      expect(subject.click_rate('Shipment')).to eq(33)
    end
  end
end
