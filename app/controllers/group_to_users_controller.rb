class GroupToUsersController < ApplicationController
  before_action :set_group_to_user, only: %i[ show edit update destroy ]

  # GET /group_to_users or /group_to_users.json
  def index
    @group_to_users = GroupToUser.all
  end

  # GET /group_to_users/1 or /group_to_users/1.json
  def show
  end

  # GET /group_to_users/new
  def new
    @group_to_user = GroupToUser.new
  end

  # GET /group_to_users/1/edit
  def edit
  end

  # POST /group_to_users or /group_to_users.json
  def create
    @group_to_user = GroupToUser.new(group_to_user_params)

    respond_to do |format|
      if @group_to_user.save
        format.html { redirect_to group_to_user_url(@group_to_user), notice: "Group to user was successfully created." }
        format.json { render :show, status: :created, location: @group_to_user }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @group_to_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /group_to_users/1 or /group_to_users/1.json
  def update
    respond_to do |format|
      if @group_to_user.update(group_to_user_params)
        format.html { redirect_to group_to_user_url(@group_to_user), notice: "Group to user was successfully updated." }
        format.json { render :show, status: :ok, location: @group_to_user }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @group_to_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /group_to_users/1 or /group_to_users/1.json
  def destroy
    @group_to_user.destroy

    respond_to do |format|
      format.html { redirect_to group_to_users_url, notice: "Group to user was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_group_to_user
      @group_to_user = GroupToUser.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def group_to_user_params
      params.require(:group_to_user).permit(:MentorID, :GroupID)
    end
end
