class AddMesToPesquisas < ActiveRecord::Migration[6.1]
  def change
    add_column :pesquisas, :mes, :string
  end
end
