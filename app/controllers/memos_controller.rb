class MemosController < ApplicationController
  def index
    @memos = Memo.includes(:user)
  end

  def new
    @memo = Memo.new
  end

  def create
    Memo.create(memo_params)
    redirect_to  controller: :users, action: :show
  end

  def show
    @memos = Memo.includes(:user)
    @memo = Memo.find(params[:id])
  end

  def edit
    @memo = Memo.find(params[:id])
  end

  def update
    memo = Memo.find(params[:id])
    memo.update(memo_params)
    redirect_to memo_path(memo)
  end

  def destroy
    memo = Memo.find(params[:id])
    memo.destroy
    redirect_to root_path
  end

  private
  def memo_params
    params.require(:memo).permit(:food, :limit_date).merge(user_id: current_user.id)
  end
end
