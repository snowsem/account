module ApplicationHelper

  def auth_admin
    if signed_in? && current_user.admin
      true
    else
      flash[:danger] = "Please log in."
      redirect_to login_url
    end
  end

  def bootstrap_class_for(flash_type)
    case flash_type
      when "success"
        "alert-success"   # Green
      when "error"
        "alert-danger"    # Red
      when "alert"
        "alert-warning"   # Yellow
      when "notice"
        "alert-info"      # Blue
      else
        flash_type.to_s
    end
  end

  def current_user_full_name
    return "#{current_user.family} #{current_user.name} #{current_user.surename}"
  end
end
