class BillV2sController < ApplicationController
  before_action :set_bill_v2, only: %i[ show edit update destroy ]

  # GET /bill_v2s or /bill_v2s.json
  def index
    @bill_v2s = BillV2.all
  end

  # GET /bill_v2s/1 or /bill_v2s/1.json
  def show
  end

  # GET /bill_v2s/new
  def new
    @bill_v2 = BillV2.new
  end

  # GET /bill_v2s/1/edit
  def edit
  end

  # POST /bill_v2s or /bill_v2s.json
  def create
    @bill_v2 = BillV2.new(bill_v2_params)

    respond_to do |format|
      if @bill_v2.save
        format.html { redirect_to bill_v2_url(@bill_v2), notice: "Bill v2 was successfully created." }
        format.json { render :show, status: :created, location: @bill_v2 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bill_v2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bill_v2s/1 or /bill_v2s/1.json
  def update
    respond_to do |format|
      if @bill_v2.update(bill_v2_params)
        format.html { redirect_to bill_v2_url(@bill_v2), notice: "Bill v2 was successfully updated." }
        format.json { render :show, status: :ok, location: @bill_v2 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bill_v2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bill_v2s/1 or /bill_v2s/1.json
  def destroy
    @bill_v2.destroy

    respond_to do |format|
      format.html { redirect_to bill_v2s_url, notice: "Bill v2 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bill_v2
      @bill_v2 = BillV2.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bill_v2_params
      params.require(:bill_v2).permit(:event_date, :cliente, :ruc, :cond_venta, :valor_parcial, :total_pagar, :iva, :telefono, :nota_remi)
    end
end
