class NotificationsController < ApplicationController
  def index
    @notifications = policy_scope(Notification).order(created_at: :desc)
    # @notifications = current_user.notications
    @notifications.update_all read: true
  end
end
