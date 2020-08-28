class CreateCarros < ActiveRecord::Migration[6.0]
  def change
    create_table :carros do |t|
      t.string :clave_car
      t.string :marca_car
      t.string :modelo_car
      t.string :matricula
      t.boolean :reprobo

      t.timestamps
    end
  end
end
