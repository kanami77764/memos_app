class MemosController < ApplicationController
  before_action :authenticate_user!, only: [:create, :edit, :update, :destroy]

  def index
    @memos = Memo.includes(:user).order("limit_date")
  end

  def create
    @memo = Memo.new(memo_params)
    if @memo.save
      respond_to do |format|
        # format.html { redirect_to user_path(current_user)}
        format.json
      end
    else
      @user = User.find(params[:id])
      @memos = @user.memos.order("limit_date")
      flash[:alert] = 'メモを入力してください'
      render user_path(current_user)
    end
  end

  def edit
    @memo = Memo.find(params[:id])
  end

  def update
    memo = Memo.find(params[:id])
    memo.update(memo_params)
    if memo.save
      redirect_to user_path(current_user)
    else
      render :edit
    end
  end

  def destroy
    memo = Memo.find(params[:id])
    memo.destroy
    redirect_to user_path(current_user)
  end

  private
  def memo_params
    params.require(:memo).permit(:food, :limit_date).merge(user_id: current_user.id)
  end
end
