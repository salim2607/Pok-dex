class AddTypeRefToPokemons < ActiveRecord::Migration[8.1]
  def change
    add_reference :pokemons, :type, null: false, foreign_key: true
  end
end
