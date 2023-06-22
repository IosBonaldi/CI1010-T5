module Authorization
  extend ActiveSupport::Concern

  included do
    before_action :authorize_admin!
  end

  private

  def authorize_admin!
    redirect_to root_path, alert: "Access Denied" unless current_user.admin?
  end
end
