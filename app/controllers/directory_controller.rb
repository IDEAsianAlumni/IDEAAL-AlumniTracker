class DirectoryController < ApplicationController
  before_action :authenticate_user!

  def index
    if params[:m].present?
      @users = User.where("major = ?", params[:m])
    else 
      @users = User.all
    end

    if params[:p].present?
      @users = @users.where("professional_track = ?", params[:p])
    else 
      @users = @users.all
    end

    if params[:n].present?
      @users = @users.where("minor = ?", params[:n])
    else 
      @users = @users.all
    end
    
    if params[:g].present?
      @users = @users.where("grad_year = ?", params[:g])
    else 
      @users = @users.all
    end
  end
end
