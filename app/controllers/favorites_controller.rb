class FavoritesController < ApplicationController
  before_action :require_user_logged_in

  def create
    micropost = Micropost.find(params[:micropost_id])
    current_user.micropost(micropost)
    flash[:success] = 'ユーザをお気に入りに登録しました。'
    redirect_back(fallback_location: root_url)
  end

  def destroy
    micropost = Micropost.find(params[:micropost_id])
    current_user.unmicropost(micropost)
    flash[:success] = 'ユーザのお気に入りを解除しました。'
    redirect_back(fallback_location: root_url)
  end
end