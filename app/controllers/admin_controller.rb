class AdminController < ApplicationController
  before_action :authenticate_user!, :except => []
  before_action :auth_admin



  def auth_admin
    if signed_in? && current_user.admin
      true
    else
      flash["alert-danger"] = "Войдите как администратор"
      redirect_to "/"
    end
  end
end