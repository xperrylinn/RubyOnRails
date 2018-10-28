class CreatePokemons < ActiveRecord::Migration[5.2]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.integer :level
      t.references :trainer, foreign_key: true
      t.integer :ndex

      t.timestamps
    end
  end
end
