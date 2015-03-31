class PatroesController < ApplicationController
  before_action :set_patrao, only: [:show, :edit, :update, :destroy]

  # GET /patroes
  # GET /patroes.json
  def index
    @patroes = Patrao.all
  end

  # GET /patroes/1
  # GET /patroes/1.json
  def show
  end

  # GET /patroes/new
  def new
    @patrao = Patrao.new
  end

  # GET /patroes/1/edit
  def edit
  end

  # POST /patroes
  # POST /patroes.json
  def create
    @patrao = Patrao.new(patrao_params)

    respond_to do |format|
      if @patrao.save
        format.html { redirect_to @patrao, notice: 'Patrao was successfully created.' }
        format.json { render :show, status: :created, location: @patrao }
      else
        format.html { render :new }
        format.json { render json: @patrao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /patroes/1
  # PATCH/PUT /patroes/1.json
  def update
    respond_to do |format|
      if @patrao.update(patrao_params)
        format.html { redirect_to @patrao, notice: 'Patrao was successfully updated.' }
        format.json { render :show, status: :ok, location: @patrao }
      else
        format.html { render :edit }
        format.json { render json: @patrao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /patroes/1
  # DELETE /patroes/1.json
  def destroy
    @patrao.destroy
    respond_to do |format|
      format.html { redirect_to patroes_url, notice: 'Patrao was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_patrao
      @patrao = Patrao.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def patrao_params
      params.require(:patrao).permit(:nome, :endereco, :telefone, :proposta)
    end
end
