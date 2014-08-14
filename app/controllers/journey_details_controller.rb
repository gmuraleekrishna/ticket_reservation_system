class JourneyDetailsController < ApplicationController
  before_action :set_journey_detail, only: [:show, :edit, :update, :destroy]

  # GET /journey_details
  # GET /journey_details.json
  def index
    @journey_details = JourneyDetail.all
  end

  # GET /journey_details/1
  # GET /journey_details/1.json
  def show
  end

  # GET /journey_details/new
  def new
    @journey_detail = JourneyDetail.new
  end

  # GET /journey_details/1/edit
  def edit
  end

  # POST /journey_details
  # POST /journey_details.json
  def create
    @journey_detail = JourneyDetail.new(journey_detail_params)

    respond_to do |format|
      if @journey_detail.save
        format.html { redirect_to @journey_detail, notice: 'Journey detail was successfully created.' }
        format.json { render action: 'show', status: :created, location: @journey_detail }
      else
        format.html { render action: 'new' }
        format.json { render json: @journey_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /journey_details/1
  # PATCH/PUT /journey_details/1.json
  def update
    respond_to do |format|
      if @journey_detail.update(journey_detail_params)
        format.html { redirect_to @journey_detail, notice: 'Journey detail was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @journey_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /journey_details/1
  # DELETE /journey_details/1.json
  def destroy
    @journey_detail.destroy
    respond_to do |format|
      format.html { redirect_to journey_details_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_journey_detail
      @journey_detail = JourneyDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def journey_detail_params
      params.require(:journey_detail).permit(:from, :to, :date, :direction)
    end
end
