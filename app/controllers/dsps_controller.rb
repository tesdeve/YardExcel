class DspsController < ApplicationController
  before_action :set_dsp, only: %i[ show edit update destroy ]

  # GET /dsps or /dsps.json
  def index
    @dsps = Dsp.all
  end

  # GET /dsps/1 or /dsps/1.json
  def show
  end

  # GET /dsps/new
  def new
    @dsp = Dsp.new
  end

  # GET /dsps/1/edit
  def edit
  end

  # POST /dsps or /dsps.json
  def create
    @dsp = Dsp.new(dsp_params)

    respond_to do |format|
      if @dsp.save
        format.html { redirect_to @dsp, notice: "Dsp was successfully created." }
        format.json { render :show, status: :created, location: @dsp }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @dsp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dsps/1 or /dsps/1.json
  def update
    respond_to do |format|
      if @dsp.update(dsp_params)
        format.html { redirect_to @dsp, notice: "Dsp was successfully updated." }
        format.json { render :show, status: :ok, location: @dsp }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @dsp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dsps/1 or /dsps/1.json
  def destroy
    @dsp.destroy
    respond_to do |format|
      format.html { redirect_to dsps_url, notice: "Dsp was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dsp
      @dsp = Dsp.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dsp_params
      params.require(:dsp).permit(:name, :dsp_name, :dsp_admin_name, :dsp_admin_surname, :dsp_admin_email, :dsp_admin_number)
    end
end
