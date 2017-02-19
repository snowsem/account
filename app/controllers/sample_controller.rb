class SampleController < ApplicationController
  def index
  end

  def new
    @sample = current_user.samples.new
    @sample.telephone = current_user.telephone
  end

  def create
    params.permit!
    @sample = Sample.new(params[:sample])
    @sample.valid?
    @user = current_user
    @user.samples.new(params[:sample])



    if @user.save
      flash[:success] = "Благодарим Вас за заказ образца. В ближайшее время с Вами свяжутся наши специалисты."
      redirect_to "/samples"
    else
      #flash[:error] = @sample.errors.full_messages
      render 'new'
    end
  end

  def edit
  end
end
