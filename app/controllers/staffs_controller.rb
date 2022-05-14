class StaffsController < ApplicationController
  before_action :set_staff, only: %i[ show edit update destroy ]
  
  # GET /staffs or /staffs.json
  def index
    if current_user.role == "admin"
      @staffs = current_company.users.all
    else
      @staffs = current_company.users.all.select{ |u| u.role != "admin" }
    end
  end

  # GET /staffs/1 or /staffs/1.json
  def show
  end

  # GET /staffs/new
  def new
    @staff = current_company.users.new
  end

  # GET /staffs/1/edit
  def edit
  end

  # POST /staffs or /staffs.json
  def create
    @staff = current_company.users.new(staffs_params)

    respond_to do |format|
      if @staff.save
        format.html { redirect_to staff_url(@staff), notice: "Staff was successfully created." }
        format.json { render :show, status: :created, location: @staff }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @staff.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /staffs/1 or /staffs/1.json
  def update
    respond_to do |format|
      if @staff.update(staffs_params)
        format.html { redirect_to staff_url(@staff), notice: "Staff was successfully updated." }
        format.json { render :show, status: :ok, location: @staff }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @staff.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /staffs/1 or /staffs/1.json
  def destroy
    @staff.destroy

    respond_to do |format|
      format.html { redirect_to staffs_url, notice: "Staff was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_staff
      @staff = current_company.users.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def staffs_params
      params.require(:user).permit(:staff_no, :name, :gender, :start_at, :email, :password, :password_confirmation, :job_title, :department, :company_id, :role)
    end
end
