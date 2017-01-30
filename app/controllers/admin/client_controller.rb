class Admin::ClientController < ApplicationController


  layout 'admin_application'

  def index
    @clients = User.all
  end

  def new
  end

  def show
  end

  def create
  end

  def update
  end

  def edit
  end
end
