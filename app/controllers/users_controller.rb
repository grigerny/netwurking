class UsersController < ApplicationController
  def index
    @search = User.search(params[:q])
    @users = @search.result


    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users }
    end
  end
  
  def update
    @user = User.find params[:id]

    respond_to do |format|
      if @user.update_attributes(params[:user])
        
        format.html { redirect_to(edit_user_path(current_user), :notice => 'User was successfully updated.') }
        format.json { respond_with_bip(@user) }
      else
        format.html { render :action => "edit" }
        format.json { respond_with_bip(@user) }
      end
    end
  end
  
  def show
    @user = User.find(params[:id])
  end
  
  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
  end
  
end
