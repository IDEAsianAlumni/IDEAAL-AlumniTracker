class UsersController < ApplicationController
    before_action :set_User, only: %i[ show edit update destroy ]
  
    # GET /Users or /Users.json
    def index
      @Users = User.all
    end
  
    # GET /Users/1 or /Users/1.json
    def show
    end
  
    # GET /Users/new
    def new
      @User = User.new
    end
  
    # GET /Users/1/edit
    def edit
    end
  
    # POST /Users or /Users.json
    def create
      @User = User.new(User_params)
  
      respond_to do |format|
        if @User.save
          format.html { redirect_to User_url(@User), notice: "User was successfully created." }
          format.json { render :show, status: :created, location: @User }
        else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @User.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # PATCH/PUT /Users/1 or /Users/1.json
    def update
      respond_to do |format|
        if @User.update(User_params)
          format.html { redirect_to User_url(@User), notice: "User was successfully updated." }
          format.json { render :show, status: :ok, location: @User }
        else
          format.html { render :edit, status: :unprocessable_entity }
          format.json { render json: @User.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # DELETE /Users/1 or /Users/1.json
    def destroy
      @User.destroy
  
      respond_to do |format|
        format.html { redirect_to Users_url, notice: "User was successfully destroyed." }
        format.json { head :no_content }
      end
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_User
        @User = User.find(params[:id])
      end
  
      # Only allow a list of trusted parameters through.
      def User_params
        params.require(:User).permit(:first_name, :middle_name, :last_name, :email, :phone_number, :uid, :Major,:Professional_Track)
      end
  end