class SpectateursController < ApplicationController
  before_action :set_spectateur, only: [:show, :edit, :update, :destroy]

  # GET /spectateurs
  # GET /spectateurs.json
  def index
    @spectateurs = Spectateur.all
  end

  # GET /spectateurs/1
  # GET /spectateurs/1.json
  def show
  end

  # GET /spectateurs/new
  def new
    @spectateur = Spectateur.new
  end

  # GET /spectateurs/1/edit
  def edit
  end

  # POST /spectateurs
  # POST /spectateurs.json
  def create
    @spectateur = Spectateur.new(spectateur_params)

    respond_to do |format|
      if @spectateur.save
        format.html { redirect_to @spectateur, notice: 'Spectateur was successfully created.' }
        format.json { render :show, status: :created, location: @spectateur }
      else
        format.html { render :new }
        format.json { render json: @spectateur.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /spectateurs/1
  # PATCH/PUT /spectateurs/1.json
  def update
    respond_to do |format|
      if @spectateur.update(spectateur_params)
        format.html { redirect_to @spectateur, notice: 'Spectateur was successfully updated.' }
        format.json { render :show, status: :ok, location: @spectateur }
      else
        format.html { render :edit }
        format.json { render json: @spectateur.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /spectateurs/1
  # DELETE /spectateurs/1.json
  def destroy
    @spectateur.destroy
    respond_to do |format|
      format.html { redirect_to spectateurs_url, notice: 'Spectateur was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_spectateur
      @spectateur = Spectateur.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def spectateur_params
      params.require(:spectateur).permit(:name, :descripton)
    end
end
