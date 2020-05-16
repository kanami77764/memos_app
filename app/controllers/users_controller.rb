class UsersController < ApplicationController

  def create
    Memo.create(memo_params)
    redirect_to  redirect_to user_path(current_user)
  end
  
  def show
    @memo = Memo.new
    @user = User.find(params[:id])
    @memos = @user.memos.order("limit_date")
  end

  private
  def memo_params
    params.require(:memo).permit(:food, :limit_date).merge(user_id: current_user.id)
  end
end
