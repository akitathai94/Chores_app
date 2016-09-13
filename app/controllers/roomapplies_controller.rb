class RoomappliesController < ApplicationController
  before_action :set_roomapply, only: [:show, :edit, :update, :destroy]

  # GET /roomapplies
  # GET /roomapplies.json
  def index
    @roomapplies = Roomapply.all
  end

  # GET /roomapplies/1
  # GET /roomapplies/1.json
  def show
  end

  # GET /roomapplies/new
  def new
    @roomapply = Roomapply.new
  end

  # GET /roomapplies/1/edit
  def edit
  end

  # POST /roomapplies
  # POST /roomapplies.json
  def create
    @roomapply = Roomapply.new(roomapply_params)

    respond_to do |format|
      if @roomapply.save
        format.html { redirect_to @roomapply, notice: 'Roomapply was successfully created.' }
        format.json { render :show, status: :created, location: @roomapply }
      else
        format.html { render :new }
        format.json { render json: @roomapply.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /roomapplies/1
  # PATCH/PUT /roomapplies/1.json
  def update
    respond_to do |format|
      if @roomapply.update(roomapply_params)
        format.html { redirect_to @roomapply, notice: 'Roomapply was successfully updated.' }
        format.json { render :show, status: :ok, location: @roomapply }
      else
        format.html { render :edit }
        format.json { render json: @roomapply.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /roomapplies/1
  # DELETE /roomapplies/1.json
  def destroy
    @roomapply.destroy
    respond_to do |format|
      format.html { redirect_to roomapplies_url, notice: 'Roomapply was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_roomapply
      @roomapply = Roomapply.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def roomapply_params
      params.require(:roomapply).permit(:fullname, :description, :email)
    end
end
