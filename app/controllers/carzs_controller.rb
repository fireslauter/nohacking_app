class CarzsController < ApplicationController
  before_action :set_carz, only: [:show, :edit, :update, :destroy]

  # GET /carzs
  # GET /carzs.json
  def index
    @carzs = Carz.all
  end

  # GET /carzs/1
  # GET /carzs/1.json
  def show
  end

  # GET /carzs/new
  def new
    @carz = Carz.new
  end

  # GET /carzs/1/edit
  def edit
  end

  # POST /carzs
  # POST /carzs.json
  def create
    @carz = Carz.new(carz_params)

    respond_to do |format|
      if @carz.save
        format.html { redirect_to @carz, notice: 'Carz was successfully created.' }
        format.json { render :show, status: :created, location: @carz }
      else
        format.html { render :new }
        format.json { render json: @carz.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /carzs/1
  # PATCH/PUT /carzs/1.json
  def update
    respond_to do |format|
      if @carz.update(carz_params)
        format.html { redirect_to @carz, notice: 'Carz was successfully updated.' }
        format.json { render :show, status: :ok, location: @carz }
      else
        format.html { render :edit }
        format.json { render json: @carz.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /carzs/1
  # DELETE /carzs/1.json
  def destroy
    @carz.destroy
    respond_to do |format|
      format.html { redirect_to carzs_url, notice: 'Carz was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_carz
      @carz = Carz.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def carz_params
      params.require(:carz).permit(:mak, :model, :year)
    end
end
