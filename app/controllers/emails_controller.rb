class EmailsController < ApplicationController

  protect_from_forgery with: :exception, except: :create

  def create
    puts('==========================')
    jison = JSON.parse(request.body.read)
    Email.create(address: jison['Address'], email_type: jison['EmailType'], event: jison['Event'], timestamp: jison['Timestamp'] )
    render plain: 'ok'
  end

end
