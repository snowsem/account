class OutletController < ApplicationController
  def index

  end

  def new
    @user = User.find(current_user.id)
    @outlet = @user.outlets.new
  end

  def create
    params.permit!
    @outlet = Outlet.new(params[:outlet])
    @outlet.valid?
    @user = current_user
    @user.outlets.new(params[:outlet])



    if @user.save
      flash[:success] = "Точка продаж добавлена!"
      redirect_to "/"
    else
      #flash[:error] = @outlet.errors.full_messages
      render 'new'
    end
  end

  def destroy
  end

  def edit
  end
end
