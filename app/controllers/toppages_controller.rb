class ToppagesController < ApplicationController
  def index
    @logined_cover = ""
    if logged_in?
      @user = current_user
      @logined_cover = 'logined_cover'
      @micropost = current_user.microposts.build  # form_for 用
      @microposts = current_user.feed_microposts.order('created_at DESC').page(params[:page]).per(6)
    end
  end
end
