class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:new, :show]

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
