class MemosController < ApplicationController
  def index
    @memos = Memo.includes(:user).order("limit_date")
  end


  def create
    @memo = Memo.create(memo_params)
    respond_to do |format|
      format.html { redirect_to user_path(current_user)}
      format.json
    end
    # respond_to do |format|
    #   format.html { redirect_to user_path(current_user)}
    #   format.json { render json: @memo }
  end

  def edit
    @memo = Memo.find(params[:id])
  end

  def update
    memo = Memo.find(params[:id])
    memo.update(memo_params)
    redirect_to user_patn(current_user)
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
