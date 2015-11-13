module TopicsHelper
  def user_is_authorized_to_create_and_delete?
    current_user && current_user.admin?
  end

  def user_is_authorized_to_edit_only?
    current_user && (current_user.moderator? || current_user.admin?)
  end
end
