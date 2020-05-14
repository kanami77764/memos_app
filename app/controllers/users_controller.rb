class UsersController < ApplicationController
  def index
    @memos = Memo.includes(:user)
  end

  def new
    @memo = Memo.new
  end

  def create
    Memo.create(memo_params)
    redirect_to users_path
  end
  
  def show
    @user = User.find(params[:id])
    @memos = @user.memos
  end

  private
  def memo_params
    params.require(:memo).permit(:food, :limit_date).merge(user_id: current_user.id)
  end
end
