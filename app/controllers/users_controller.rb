class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @memos = @user.memos
  end
end
