class User < ActiveRecord::Base
	include Humanizer
  require_human_on :create
  include SimpleCaptcha::ModelHelpers
  apply_simple_captcha
end
