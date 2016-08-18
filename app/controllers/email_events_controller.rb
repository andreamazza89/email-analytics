class EmailEventsController < ApplicationController

  protect_from_forgery with: :exception, except: :create

  def create
    event = JSON.parse(request.body.read)
    EmailEvent.create_email_event(event)
    render plain: 'OK'
  end

end
