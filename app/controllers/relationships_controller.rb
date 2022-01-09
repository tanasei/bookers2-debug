class RelationshipsController < ApplicationController

  def create
    corrent_user.follow(params[:user_id])
    redirect_to request.referer
  end

  def destroy
    corrent_user.unfollow(params[:user_id])
    redirect_to request.referer
  end

  def followings
    user = User.find(params[:user_id])
    @users = user.followings
  end

  def followers
    user = User.find(params[:user_id])
    @users = user.followers
  end
end
