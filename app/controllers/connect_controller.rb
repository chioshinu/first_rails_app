class ConnectController < ApplicationController
  def all
    @users = User.paginate(:page => params[:page], :per_page => 20)
  end

  def userdetail

  end

end
