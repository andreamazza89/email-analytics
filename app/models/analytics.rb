class Analytics

  def calculate_total(search_parameters)
    EmailEvent.where(event: search_parameters[:event]).count
  end

  def open_rate(email_type)
    total_sent_emails   = EmailEvent.where(event: 'send', email_type: email_type).count
    total_opened_emails = EmailEvent.where(event: 'open', email_type: email_type).count
    return 0 if [total_opened_emails, total_sent_emails].include?(0)
    return ((total_opened_emails/total_sent_emails.to_f)*100).round
  end

  def click_rate(email_type)
    total_sent_emails   = EmailEvent.where(event: 'send', email_type: email_type).count
    total_clicked_emails = EmailEvent.where(event: 'click', email_type: email_type).count
    return 0 if [total_clicked_emails, total_sent_emails].include?(0)
    return ((total_clicked_emails/total_sent_emails.to_f)*100).round
  end

  def email_types
    EmailEvent.distinct.pluck(:email_type) 
  end
end
