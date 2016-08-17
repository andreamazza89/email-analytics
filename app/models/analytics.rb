class Analytics
  def emails_sent
    EmailEvent.where(event: 'send').count
  end
end
