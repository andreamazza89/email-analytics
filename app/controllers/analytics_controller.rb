class AnalyticsController < ApplicationController
  def index
    @analytics = Analytics.new 
  end
end
