class HeysController < ApplicationController
  before_action :set_hey, only: [:show, :edit, :update, :destroy]

  # GET /heys
  # GET /heys.json
  def index
    @heys = Hey.all
  end

  # GET /heys/1
  # GET /heys/1.json
  def show
  end

  # GET /heys/new
  def new
    @hey = Hey.new
  end

  # GET /heys/1/edit
  def edit
  end

  # POST /heys
  # POST /heys.json
  def create
    @hey = Hey.new(hey_params)

    respond_to do |format|
      if @hey.save
        format.html { redirect_to @hey, notice: 'Hey was successfully created.' }
        format.json { render :show, status: :created, location: @hey }
      else
        format.html { render :new }
        format.json { render json: @hey.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /heys/1
  # PATCH/PUT /heys/1.json
  def update
    respond_to do |format|
      if @hey.update(hey_params)
        format.html { redirect_to @hey, notice: 'Hey was successfully updated.' }
        format.json { render :show, status: :ok, location: @hey }
      else
        format.html { render :edit }
        format.json { render json: @hey.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /heys/1
  # DELETE /heys/1.json
  def destroy
    @hey.destroy
    respond_to do |format|
      format.html { redirect_to heys_url, notice: 'Hey was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hey
      @hey = Hey.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hey_params
      params.require(:hey).permit(:hey, :index, :hello, :bye)
    end
end
