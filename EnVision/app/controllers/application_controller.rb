class ApplicationController < ActionController::Base
  def index
    render :index
  end
  def sources
    render :sources
  end
end
