class HomeSalesController < ApplicationController
  before_action :set_home_sale, only: %i[ show edit update destroy advertisement ]

  # GET /home_sales or /home_sales.json
  def index
    @home_sales = HomeSale.all
  end

  # GET /home_sales/1 or /home_sales/1.json
  def show
  end

  # GET /home_sales/new
  def new
    @home_sale = HomeSale.new
    @home = Home.find(params[:home])
  end

  # GET /home_sales/1/edit
  def edit
  end

  # POST /home_sales or /home_sales.json
  def create
    @home_sale = HomeSale.new(home_sale_params)

    respond_to do |format|
      if @home_sale.save
        format.html { redirect_to home_sale_url(@home_sale), notice: "Home sale was successfully created." }
        format.json { render :show, status: :created, location: @home_sale }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @home_sale.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /home_sales/1 or /home_sales/1.json
  def update
    respond_to do |format|
      if @home_sale.update(home_sale_params)
        format.html { redirect_to home_sale_url(@home_sale), notice: "Home sale was successfully updated." }
        format.json { render :show, status: :ok, location: @home_sale }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @home_sale.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /home_sales/1 or /home_sales/1.json
  def destroy
    @home_sale.destroy!

    respond_to do |format|
      format.html { redirect_to home_sales_url, notice: "Home sale was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_home_sale
      @home_sale = HomeSale.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def home_sale_params
      params.require(:home_sale).permit(:home_id, :price, :description)
    end


end
