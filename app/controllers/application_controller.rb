class ApplicationController < ActionController::API
  before_action :set_user

  private

  def set_user
    @current_user = User.find_by sub: request.headers["sub"]
  end
end
