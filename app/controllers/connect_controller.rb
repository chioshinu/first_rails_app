class ConnectController < ApplicationController
  def all
    @users = User.all
  end

  def userdetail
  end

end
