class HomeController < ApplicationController
  def index
    @users = User.all
    @overview = overview
  end

  private

  def overview
    @results = Array.new
    current_user.friends.each do |friend|
      search(friend).each do |tweet|
        @results << tweet
      end
    end
    @results
  end

  def search(friend)
    Twitter.search("from:#{friend.username} want OR need OR love OR awesome").results
  end
end
