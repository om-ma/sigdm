class AppointmentFilesController < ApplicationController
  before_action :set_appointment_file, only: [:show, :edit, :update, :destroy]

  # GET /appointment_files
  # GET /appointment_files.json
  def index
    @appointment_files = AppointmentFile.all
  end

  # GET /appointment_files/1
  # GET /appointment_files/1.json
  def show
  end

  # GET /appointment_files/new
  def new
    @appointment_file = AppointmentFile.new
    @appointment_id     = params[:appointment_id]
    
  end

  # GET /appointment_files/1/edit
  def edit
  end

  # POST /appointment_files
  # POST /appointment_files.json
  def create
    @appointment_file = AppointmentFile.new(appointment_file_params)
    @appointment_file.appointment_id = params[:appointment_id]
    respond_to do |format|
      if @appointment_file.save
        format.html { redirect_to appointment_path(params[:appointment_id]), notice: 'Appointment file was successfully created.' }
        format.json { render :show, status: :created, location: @appointment_file }
      else
        format.html { render :new }
        format.json { render json: @appointment_file.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /appointment_files/1
  # PATCH/PUT /appointment_files/1.json
  def update
    respond_to do |format|
      if @appointment_file.update(appointment_file_params)
        format.html { redirect_to appointment_path(params[:appointment_id]), notice: 'Appointment file was successfully updated.' }
        format.json { render :show, status: :ok, location: @appointment_file }
      else
        format.html { render :edit }
        format.json { render json: @appointment_file.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /appointment_files/1
  # DELETE /appointment_files/1.json
  def destroy
    @appointment_file.destroy
    respond_to do |format|
      format.html { redirect_to appointments_path, notice: 'Appointment file was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_appointment_file
      @appointment_file = AppointmentFile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def appointment_file_params
      params.require(:appointment_file).permit(:name, :desc, :document, :appointment_id)
    end
end
