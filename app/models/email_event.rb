class EmailEvent < ApplicationRecord

  def self.create_email_event(event)
    address    = event['Address']
    email_type = event['EmailType']
    event      = event['Event']
    timestamp  = event['Timestamp']
    self.create(address: address, email_type: email_type, event: event, timestamp: timestamp)
  end

end
