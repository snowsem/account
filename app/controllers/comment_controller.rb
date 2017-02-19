class CommentController < ApplicationController
  def index
  end

  def new
    @comment = current_user.comments.new
  end

  def create
    params.permit!
    @comment = Comment.new(params[:comment])
    @comment.valid?
    @user = current_user
    @user.comments.new(params[:comment])



    if @user.save
      flash[:success] = "Отзыв добавлен!"
      redirect_to "/comments"
    else
      #flash[:error] = @comment.errors.full_messages
      render 'new'
    end
  end

  def edit
  end

end
