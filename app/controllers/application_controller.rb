class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  def now
    @time=Time.zone.now.strftime("%Y年 %m月 %d日, %H:%M:%S")
  end
end
