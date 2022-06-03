module ApplicationHelper
    def calc
        @calc_ambulatorio = (@pesquisa.ambulatorio_total * @pesquisa.ambul_sat / 100).to_i
        @calc_emergencia = (@pesquisa.emergencia_total * @pesquisa.emerg_sat / 100).to_i
        @calc_internacao = (@pesquisa.internacao_total * @pesquisa.intern_sat / 100).to_i
        @calc_satifeitos = @calc_ambulatorio + @calc_emergencia + @calc_internacao
        @calc_total = @pesquisa.ambulatorio_total + @pesquisa.emergencia_total + @pesquisa.internacao_total
        @calc_percent_total = (@calc_satifeitos * 100)/@calc_total
    end
end
