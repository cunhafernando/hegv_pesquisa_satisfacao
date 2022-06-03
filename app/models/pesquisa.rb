class Pesquisa < ApplicationRecord
    validates :ambulatorio_total, presence:true
    validates :ambul_sat, presence:true
    validates :emergencia_total, presence:true
    validates :emerg_sat, presence:true
    validates :internacao_total, presence:true
    validates :intern_sat, presence:true
    validates :mes, presence:true
end
