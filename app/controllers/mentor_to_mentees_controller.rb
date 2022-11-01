class MentorToMenteesController < ApplicationController
  before_action :set_mentor_to_mentee, only: %i[ show edit update destroy ]

  # GET /mentor_to_mentees or /mentor_to_mentees.json
  def index
    @mentor_to_mentees = MentorToMentee.all
    @users = User.all
  end

  # GET /mentor_to_mentees/1 or /mentor_to_mentees/1.json
  def show
  end

  # GET /mentor_to_mentees/new
  def new
    @mentor_to_mentee = MentorToMentee.new
    @users = User.all
  end

  # GET /mentor_to_mentees/1/edit
  def edit
    @users = User.all
  end

  # POST /mentor_to_mentees or /mentor_to_mentees.json
  def create
    @mentor_to_mentee = MentorToMentee.new(mentor_to_mentee_params)

    respond_to do |format|
      if @mentor_to_mentee.save
        format.html { redirect_to mentor_to_mentee_url(@mentor_to_mentee), notice: "Mentor to mentee was successfully created." }
        format.json { render :show, status: :created, location: @mentor_to_mentee }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @mentor_to_mentee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mentor_to_mentees/1 or /mentor_to_mentees/1.json
  def update
    respond_to do |format|
      if @mentor_to_mentee.update(mentor_to_mentee_params)
        format.html { redirect_to mentor_to_mentee_url(@mentor_to_mentee), notice: "Mentor to mentee was successfully updated." }
        format.json { render :show, status: :ok, location: @mentor_to_mentee }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @mentor_to_mentee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mentor_to_mentees/1 or /mentor_to_mentees/1.json
  def destroy
    @mentor_to_mentee.destroy

    respond_to do |format|
      format.html { redirect_to admin_path, notice: "Mentor to mentee was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mentor_to_mentee
      @mentor_to_mentee = MentorToMentee.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mentor_to_mentee_params
      params.require(:mentor_to_mentee).permit(:mentor_uid, :mentee_uid, :status, :year)
    end
end
