class AddNombreToContratos < ActiveRecord::Migration[7.0]
  def change
    add_column :contratos, :nombre, :string
  end
end
