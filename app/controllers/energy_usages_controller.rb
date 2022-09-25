class EnergyUsagesController < ApplicationController
  before_action :set_energy_usage, only: %i[ show edit update destroy ]
  skip_forgery_protection

  # GET /energy_usages or /energy_usages.json
  def index
    @energy_usages = EnergyUsage.all.order("created_at DESC").limit(5)
    @data = []
    @date = []
    @energy_usages.each do |usage|
      @data.append(usage.energy_usages)
      @date.append(usage.created_at.to_s)
    end
  end

  # GET /energy_usages/1 or /energy_usages/1.json
  def show
  end

  # GET /energy_usages/new
  def new
    @energy_usage = EnergyUsage.new
  end

  # GET /energy_usages/1/edit
  def edit
  end

  # POST /energy_usages or /energy_usages.json
  def create
    @energy_usage = EnergyUsage.new(energy_usage_params)

    respond_to do |format|
      if @energy_usage.save
        format.html { redirect_to energy_usage_url(@energy_usage), notice: "Energy usage was successfully created." }
        format.json { render :show, status: :created, location: @energy_usage }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @energy_usage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /energy_usages/1 or /energy_usages/1.json
  def update
    respond_to do |format|
      if @energy_usage.update(energy_usage_params)
        format.html { redirect_to energy_usage_url(@energy_usage), notice: "Energy usage was successfully updated." }
        format.json { render :show, status: :ok, location: @energy_usage }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @energy_usage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /energy_usages/1 or /energy_usages/1.json
  def destroy
    @energy_usage.destroy

    respond_to do |format|
      format.html { redirect_to energy_usages_url, notice: "Energy usage was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_energy_usage
      @energy_usage = EnergyUsage.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def energy_usage_params
      params.require(:energy_usage).permit(:energy_usages)
    end
end
