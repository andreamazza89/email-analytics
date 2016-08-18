module FactoryHelpers

  def create_email_events(options)
    quantity = options[:quantity] || 1
    email_type = options[:email_type] || 'Shipment'
    event = options[:event] || 'send'
    quantity.times do 
      FactoryGirl.create(:email_event, email_type: email_type, event: event)
    end
  end

end
