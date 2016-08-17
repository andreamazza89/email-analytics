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
end
