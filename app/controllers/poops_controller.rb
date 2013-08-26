class PoopsController < ApplicationController
  before_action :set_poop, only: [:show, :edit, :update, :destroy]

  # GET /poops
  # GET /poops.json
  def index
    @poops = Poop.all
  end

  # GET /poops/1
  # GET /poops/1.json
  def show
  end

  # GET /poops/new
  def new
    @poop = Poop.new
  end

  # GET /poops/1/edit
  def edit
  end

  # POST /poops
  # POST /poops.json
  def create
    @poop = Poop.new(poop_params)

    respond_to do |format|
      if @poop.save
        format.html { redirect_to @poop, notice: 'Poop was successfully created.' }
        format.json { render action: 'show', status: :created, location: @poop }
      else
        format.html { render action: 'new' }
        format.json { render json: @poop.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /poops/1
  # PATCH/PUT /poops/1.json
  def update
    respond_to do |format|
      if @poop.update(poop_params)
        format.html { redirect_to @poop, notice: 'Poop was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @poop.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /poops/1
  # DELETE /poops/1.json
  def destroy
    @poop.destroy
    respond_to do |format|
      format.html { redirect_to poops_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_poop
      @poop = Poop.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def poop_params
      params.require(:poop).permit(:user_id, :consistency, :notes)
    end
end
