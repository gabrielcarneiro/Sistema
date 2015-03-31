class DiaristasController < ApplicationController
  before_action :set_diarista, only: [:show, :edit, :update, :destroy]

  # GET /diaristas
  # GET /diaristas.json
  def index
    @diaristas = Diarista.all
  end

  # GET /diaristas/1
  # GET /diaristas/1.json
  def show
  end

  # GET /diaristas/new
  def new
    @diarista = Diarista.new
  end

  # GET /diaristas/1/edit
  def edit
  end

  # POST /diaristas
  # POST /diaristas.json
  def create
    @diarista = Diarista.new(diarista_params)

    respond_to do |format|
      if @diarista.save
        format.html { redirect_to @diarista, notice: 'Diarista was successfully created.' }
        format.json { render :show, status: :created, location: @diarista }
      else
        format.html { render :new }
        format.json { render json: @diarista.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /diaristas/1
  # PATCH/PUT /diaristas/1.json
  def update
    respond_to do |format|
      if @diarista.update(diarista_params)
        format.html { redirect_to @diarista, notice: 'Diarista was successfully updated.' }
        format.json { render :show, status: :ok, location: @diarista }
      else
        format.html { render :edit }
        format.json { render json: @diarista.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /diaristas/1
  # DELETE /diaristas/1.json
  def destroy
    @diarista.destroy
    respond_to do |format|
      format.html { redirect_to diaristas_url, notice: 'Diarista was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_diarista
      @diarista = Diarista.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def diarista_params
      params.require(:diarista).permit(:nome, :endereco, :telefone, :diaria)
    end
end
