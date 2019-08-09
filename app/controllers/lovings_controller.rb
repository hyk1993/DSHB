class LovingsController < ApplicationController
  before_action :set_loving, only: [:show, :edit, :update, :destroy]

  # GET /lovings
  # GET /lovings.json
  def index
    @lovings = Loving.all
    @love = Loving.new
  end

  # GET /lovings/1
  # GET /lovings/1.json
  def show
  end

  # GET /lovings/new
  def new
    @loving = Loving.new
  end

  # GET /lovings/1/edit
  def edit
  end

  # POST /lovings
  # POST /lovings.json
  def create
    @loving = Loving.new(loving_params)

    respond_to do |format|
      if @loving.save
        format.html { redirect_to @loving, notice: 'Loving was successfully created.' }
        format.json { render :show, status: :created, location: @loving }
      else
        format.html { render :new }
        format.json { render json: @loving.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lovings/1
  # PATCH/PUT /lovings/1.json
  def update
    respond_to do |format|
      if @loving.update(loving_params)
        format.html { redirect_to @loving, notice: 'Loving was successfully updated.' }
        format.json { render :show, status: :ok, location: @loving }
      else
        format.html { render :edit }
        format.json { render json: @loving.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lovings/1
  # DELETE /lovings/1.json
  def destroy
    @loving.destroy
    respond_to do |format|
      format.html { redirect_to lovings_url, notice: 'Loving was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_loving
      @loving = Loving.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def loving_params
      params.require(:loving).permit(:content, :gneder, :ask, :attitude)
    end
end
