class PesquisasController < ApplicationController
  before_action :set_pesquisa, only: %i[ show edit update destroy ]

  # GET /pesquisas or /pesquisas.json
  def index
    @pesquisas = Pesquisa.all
  end

  # GET /pesquisas/1 or /pesquisas/1.json
  def show
    @calc_ambulatorio = (@pesquisa.ambulatorio_total * @pesquisa.ambul_sat / 100).to_i
    @calc_emergencia = (@pesquisa.emergencia_total * @pesquisa.emerg_sat / 100).to_i
    @calc_internacao = (@pesquisa.internacao_total * @pesquisa.intern_sat / 100).to_i
    @calc_satifeitos = @calc_ambulatorio + @calc_emergencia + @calc_internacao
    @calc_total = @pesquisa.ambulatorio_total + @pesquisa.emergencia_total + @pesquisa.internacao_total
    @calc_percent_total = (@calc_satifeitos * 100)/@calc_total
  end

  # GET /pesquisas/new
  def new
    @pesquisa = Pesquisa.new
  end

  # GET /pesquisas/1/edit
  def edit
  end

  # POST /pesquisas or /pesquisas.json
  def create
    @pesquisa = Pesquisa.new(pesquisa_params)

    respond_to do |format|
      if @pesquisa.save
        format.html { redirect_to pesquisa_url(@pesquisa), notice: "Pesquisa criada com sucesso." }
        format.json { render :show, status: :created, location: @pesquisa }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pesquisa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pesquisas/1 or /pesquisas/1.json
  def update
    respond_to do |format|
      if @pesquisa.update(pesquisa_params)
        format.html { redirect_to pesquisa_url(@pesquisa), notice: "Pesquisa atualizada com sucesso." }
        format.json { render :show, status: :ok, location: @pesquisa }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pesquisa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pesquisas/1 or /pesquisas/1.json
  def destroy
    @pesquisa.destroy

    respond_to do |format|
      format.html { redirect_to pesquisas_url, notice: "Pesquisa apagada com sucesso." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pesquisa
      @pesquisa = Pesquisa.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pesquisa_params
      params.require(:pesquisa).permit(:mes, :ambulatorio_total, :ambul_sat, :emergencia_total, :emerg_sat, :internacao_total, :intern_sat)
    end
end
