FactoryGirl.define do

  factory :email_event do
    address 'andrea@whatsmyname.com'
    email_type 'Shipment'
    event 'send'
    timestamp 01234567 
  end

end
