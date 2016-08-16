class EmailsController < ApplicationController

  protect_from_forgery with: :exception, except: :create
  
  def create
    puts('==========================')
    jison = JSON.parse(request.body.read)
    puts(jison['Address'])
    puts(jison['EmailType'])
    puts(jison['Event'])
    puts(jison['Timestamp'])
    puts('=========================')
    render plain: 'ok'
  end

end
