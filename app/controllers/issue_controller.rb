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
      flash[:success] = "Спасибо за Ваш вопрос! Мы ответим на него в ближайшее время!"
      redirect_to "/issues"
    else
      #flash[:error] = @issue.errors.full_messages
      render 'new'
    end
  end

  def edit
  end


  def show
    @issue_comment = IssueComment.new(:issue_id => params[:id], :user_id => current_user.id)
    @issue = Issue.find(params[:id])
  end
  def add
    params.permit!
    @issue_comment = IssueComment.new(params[:issue_comment])
    @issue_comment.user_id = current_user.id

    if @issue_comment.save
      flash[:success] = "Ответ добавлен! "
      redirect_to "/issue/"+params[:issue_comment][:issue_id].to_s
    else
     # flash[:error] = @issue_comment.errors.full_messages
      @issue = Issue.find(params[:issue_comment][:issue_id])

      render "issue/show"
    end
  end
end
