module FactoryHelpers
  def create_sent_email_events(total)
    total.times { FactoryGirl.create(:email_event, event: 'send') }
  end
end
