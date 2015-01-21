class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :basic_authenticate

  private

  def basic_authenticate
    authenticate_or_request_with_http_basic do |user, pass|
      user == ENV['BASIC_AUTH_USER'] and ENV['BASIC_AUTH_PASSWORD']
    end
  end
end
