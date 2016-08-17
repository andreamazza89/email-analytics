class AnalyticsController < ApplicationController
  def index
    @emails = Email.all
  end
end
