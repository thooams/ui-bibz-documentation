class ApplicationController < ActionController::Base
  layout "application_right_nav"
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :ui_bibz

  def ui_bibz
    @ui_bibz = UiBibzApp::Application::Gems::ui_bibz
  end
end
