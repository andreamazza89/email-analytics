FactoryGirl.define do

  factory :email_event do
    address 'andrea@whatsmyname.com'
    email_type 'shipment'
    event 'send'
    timestamp 01234567 
  end

end
