class DoctorsController < ApplicationController
  before_action :set_doctor, only: [:show, :edit, :update, :destroy]

  # GET /doctors
  # GET /doctors.json
  def index
    @doctors = User.with_role(:doctor)

  end

  # GET /doctors/1
  # GET /doctors/1.json
  def show
  end

  # GET /doctors/new
  def new
  end

  # GET /doctors/1/edit
  def edit
  end

  def create

    @doctor = User.new params[:user].permit!

    @doctor.email      = (0..8).map{("a".."z").to_a[rand(26)]}.join+"@yopmail.com"
    rand_password       = (0...8).map { (65 + rand(26)).chr }.join
    @doctor.password   = rand_password 
    @doctor.password_confirmation   = rand_password 
    @doctor.add_role :doctor

    respond_to do |format|
      if @doctor.save
        format.html { redirect_to doctors_path, notice: 'Doctor was successfully created.' }
      else
        format.html { render :new }
        format.json { render json: @doctor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /patients/1
  # PATCH/PUT /patients/1.json
  def update
    respond_to do |format|
      if @doctor.update(params[:user].permit!)
        format.html { redirect_to doctors_path, notice: 'Doctor was successfully updated.' }
        format.json { render :show, status: :ok, location: @doctor }
      else
        format.html { render :edit }
        format.json { render json: @doctor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /patients/1
  # DELETE /patients/1.json
  def destroy
    @doctor.destroy
    respond_to do |format|
      format.html { redirect_to doctors_url, notice: 'Doctor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_doctor
      @doctor = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def doctor_params
      params.fetch(:doctor, {})
    end
end
