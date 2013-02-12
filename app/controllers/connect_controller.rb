class ConnectController < ApplicationController
  before_filter :retrieveById, :only => [:edit, :update]

  def all
    @users = User.paginate(:page => params[:page], :per_page => 20)
  end

  def userdetail

  end

  def retrieveById
     @user = User.find(params[:id])
  end

  def destroy
    #  @users = User.find(params[:user].map{|x| x.to_i}).destroy     # TODO - why not working?
    User.find(params[:user].map{|x| x.to_i}).each{|u| u.destroy if u } if params[:user]
    respond_to do |format|
      format.html { redirect_to connect_all_path }
      format.json { head :ok }
    end
  end

end
