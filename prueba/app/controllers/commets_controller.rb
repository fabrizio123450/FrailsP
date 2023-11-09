class CommetsController < ApplicationController
  before_action :set_commet, only: %i[ show edit update destroy ]

  # GET /commets or /commets.json
  def index
    @commets = Commet.all
  end

  # GET /commets/1 or /commets/1.json
  def show
  end

  # GET /commets/new
  def new
    @commet = Commet.new
  end

  # GET /commets/1/edit
  def edit
  end

  # POST /commets or /commets.json
  def create
    @commet = Commet.new(commet_params)

    respond_to do |format|
      if @commet.save
        format.html { redirect_to commet_url(@commet), notice: "Commet was successfully created." }
        format.json { render :show, status: :created, location: @commet }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @commet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /commets/1 or /commets/1.json
  def update
    respond_to do |format|
      if @commet.update(commet_params)
        format.html { redirect_to commet_url(@commet), notice: "Commet was successfully updated." }
        format.json { render :show, status: :ok, location: @commet }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @commet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /commets/1 or /commets/1.json
  def destroy
    @commet.destroy

    respond_to do |format|
      format.html { redirect_to commets_url, notice: "Commet was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_commet
      @commet = Commet.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def commet_params
      params.require(:commet).permit(:comentario)
    end
end
