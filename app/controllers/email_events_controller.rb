class EmailEventsController < ApplicationController

  protect_from_forgery with: :exception, except: :create

  def create
    event_data = JSON.parse(request.body.read)
    EmailEvent.create_email_event(event_data)
    render plain: 'OK'
  end

end
