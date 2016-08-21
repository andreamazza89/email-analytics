class EmailEvent < ApplicationRecord

  def self.create_email_event(event_data)
    address    = event_data['Address']
    email_type = event_data['EmailType']
    timestamp  = event_data['Timestamp']
    event      = event_data['Event']
    self.create(address: address, email_type: email_type, event: event, timestamp: timestamp)
  end

end
