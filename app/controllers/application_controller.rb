class ApplicationController < ActionController::Base

	# 添加验证吗所需
	include SimpleCaptcha::ControllerHelpers
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end
