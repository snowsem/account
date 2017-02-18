class IssueController < ApplicationController
  def index
  end

  def new
    @issue = current_user.issues.new
  end

  def create
    params.permit!
    @issue = Issue.new(params[:issue])
    @issue.valid?
    @user = current_user
    @user.issues.new(params[:issue])



    if @user.save
      flash[:success] = "Вопрос добавлен!"
      redirect_to "/issues"
    else
      flash[:error] = @issue.errors.full_messages
      render 'new'
    end
  end

  def edit
  end
end
