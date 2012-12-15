class FriendshipController < ApplicationController
  def new
    @friendship = current_user.friendships.build(params[:friendship])
    if @friendship.save
      flash[:notice] = "Added friend."
      redirect_to friends_path
    else
      flash[:error] = "Error occurred when adding friend."
      redirect_to friends_path
    end
  end

  def edit
    @friendship = current_user.friendships.find(params[:id])
    @friendship.update_attributes(params[:friendship])
    flash[:notice] = "Successfully updated friend."
    redirect_to friends_path
  end
  
  def destroy
    @friendship = current_user.friendships.find(params[:id])
    @friendship.destroy
    flash[:notice] = "Successfully deleted friend."
    redirect_to friends_path
  end
end