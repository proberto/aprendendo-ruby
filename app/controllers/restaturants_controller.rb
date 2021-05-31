class RestaturantsController < ApplicationController
  before_action :set_restaturant, only: %i[ show edit update destroy ]

  # GET /restaturants or /restaturants.json
  def index
    @restaturants = Restaturant.all
  end

  # GET /restaturants/1 or /restaturants/1.json
  def show
  end

  # GET /restaturants/new
  def new
    @restaturant = Restaturant.new
  end

  # GET /restaturants/1/edit
  def edit
  end

  # POST /restaturants or /restaturants.json
  def create
    @restaturant = Restaturant.new(restaturant_params)

    respond_to do |format|
      if @restaturant.save
        format.html { redirect_to @restaturant, notice: "Restaturant was successfully created." }
        format.json { render :show, status: :created, location: @restaturant }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @restaturant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /restaturants/1 or /restaturants/1.json
  def update
    respond_to do |format|
      if @restaturant.update(restaturant_params)
        format.html { redirect_to @restaturant, notice: "Restaturant was successfully updated." }
        format.json { render :show, status: :ok, location: @restaturant }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @restaturant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /restaturants/1 or /restaturants/1.json
  def destroy
    @restaturant.destroy
    respond_to do |format|
      format.html { redirect_to restaturants_url, notice: "Restaturant was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_restaturant
      @restaturant = Restaturant.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def restaturant_params
      params.require(:restaturant).permit(:name, :address)
    end
end
