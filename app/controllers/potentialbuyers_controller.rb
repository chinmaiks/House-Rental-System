class PotentialbuyersController < ApplicationController
  before_action :set_potentialbuyer, only: [:show, :edit, :update, :destroy]

  # GET /potentialbuyers
  # GET /potentialbuyers.json
  def index
    @potentialbuyers = Potentialbuyer.all
  end

  # GET /potentialbuyers/1
  # GET /potentialbuyers/1.json
  def show
  end

  # GET /potentialbuyers/new
  def new
    @potentialbuyer = Potentialbuyer.new
  end

  # GET /potentialbuyers/1/edit
  def edit
  end

  # POST /potentialbuyers
  # POST /potentialbuyers.json
  def create
    @potentialbuyer = Potentialbuyer.new(potentialbuyer_params)

    respond_to do |format|
      if @potentialbuyer.save
        format.html { redirect_to @potentialbuyer, notice: 'Potentialbuyer was successfully created.' }
        format.json { render :show, status: :created, location: @potentialbuyer }
      else
        format.html { render :new }
        format.json { render json: @potentialbuyer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /potentialbuyers/1
  # PATCH/PUT /potentialbuyers/1.json
  def update
    respond_to do |format|
      if @potentialbuyer.update(potentialbuyer_params)
        format.html { redirect_to @potentialbuyer, notice: 'Potentialbuyer was successfully updated.' }
        format.json { render :show, status: :ok, location: @potentialbuyer }
      else
        format.html { render :edit }
        format.json { render json: @potentialbuyer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /potentialbuyers/1
  # DELETE /potentialbuyers/1.json
  def destroy
    @potentialbuyer.destroy
    respond_to do |format|
      format.html { redirect_to potentialbuyers_url, notice: 'Potentialbuyer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_potentialbuyer
      @potentialbuyer = Potentialbuyer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def potentialbuyer_params
      params.require(:potentialbuyer).permit(:user_id, :house_id)
    end
end
