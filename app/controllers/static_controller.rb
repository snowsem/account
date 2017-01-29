class StaticController < ApplicationController
  before_action :authenticate_user!, :except => []

  def index

  end

  def about
  end

  def contact
  end
end
