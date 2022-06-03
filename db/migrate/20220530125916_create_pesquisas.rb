class CreatePesquisas < ActiveRecord::Migration[6.1]
  def change
    create_table :pesquisas do |t|
      t.integer :ambulatorio_total
      t.float :ambul_sat
      t.integer :emergencia_total
      t.float :emerg_sat
      t.integer :internacao_total
      t.float :intern_sat      


      t.timestamps
    end
  end
end
