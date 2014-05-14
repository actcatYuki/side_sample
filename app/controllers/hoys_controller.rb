class HoysController < ApplicationController
  before_action :set_hoy, only: [:show, :edit, :update, :destroy]

  # GET /hoys
  # GET /hoys.json
  def index
    @hoys = Hoy.all
  end

  # GET /hoys/1
  # GET /hoys/1.json
  def show
  end

  # GET /hoys/new
  def new
    @hoy = Hoy.new
  end

  # GET /hoys/1/edit
  def edit
  end

  # POST /hoys
  # POST /hoys.json
  def create
    @hoy = Hoy.new(hoy_params)

    respond_to do |format|
      if @hoy.save
        format.html { redirect_to @hoy, notice: 'Hoy was successfully created.' }
        format.json { render :show, status: :created, location: @hoy }
      else
        format.html { render :new }
        format.json { render json: @hoy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hoys/1
  # PATCH/PUT /hoys/1.json
  def update
    respond_to do |format|
      if @hoy.update(hoy_params)
        format.html { redirect_to @hoy, notice: 'Hoy was successfully updated.' }
        format.json { render :show, status: :ok, location: @hoy }
      else
        format.html { render :edit }
        format.json { render json: @hoy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hoys/1
  # DELETE /hoys/1.json
  def destroy
    @hoy.destroy
    respond_to do |format|
      format.html { redirect_to hoys_url, notice: 'Hoy was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hoy
      @hoy = Hoy.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hoy_params
      params.require(:hoy).permit(:hey, :index, :hello, :bye)
    end
end
