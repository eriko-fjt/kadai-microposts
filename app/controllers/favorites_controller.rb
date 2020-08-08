class FavoritesController < ApplicationController
  
  before_action :require_user_logged_in
  
  
  
  # 課題　redirect_toの先が自信なし
  def create
    micropost = Micropost.find(params[:micropost_id])
    current_user.favorite(micropost)
    
    flash[:success] = 'お気に入りに追加しました。'
    # redirect_to user
    redirect_back(fallback_location: root_path)
  end
  
  
  # 課題　redirect_toの先が自信なし
  def destroy
    micropost = Micropost.find(params[:micropost_id])
    current_user.unfavorite(micropost)
    
    flash[:success] = 'お気に入りから除外しました'
      # redirect_to micropost
      redirect_back(fallback_location: root_path)
  end
  
end
