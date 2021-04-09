class StatisticsController < ApplicationController
  def index
    @browser_list = Visit.group(:browser).count
    @os_list = Visit.group(:os).count
  end
end
