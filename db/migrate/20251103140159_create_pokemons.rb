class CreatePokemons < ActiveRecord::Migration[8.1]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.integer :level
      t.string :poketype
      t.text :description

      t.timestamps
    end
  end
end
