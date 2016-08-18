class Analytics
  def emails_sent
    EmailEvent.where(event: 'send').count
  end

  def emails_opened
    EmailEvent.where(event: 'open').count
  end

  def emails_clicked
    EmailEvent.where(event: 'click').count
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
