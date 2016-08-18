class Analytics

  def calculate_total(search_parameters)
    EmailEvent.where(event: search_parameters[:event]).count
  end

  def calculate_rate(search_parameters)
    email_type = search_parameters[:email_type]
    event      = search_parameters[:event]

    total_sent_emails  = EmailEvent.where(event: 'send', email_type: email_type).count
    total_event_emails = EmailEvent.where(event: event, email_type: email_type).count

    return 0 if [total_event_emails, total_sent_emails].include?(0)
    return ((total_event_emails/total_sent_emails.to_f)*100).round
  end

  def email_types
    EmailEvent.distinct.pluck(:email_type) 
  end
end
