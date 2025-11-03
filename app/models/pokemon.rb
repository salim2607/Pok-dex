class Pokemon < ApplicationRecord
  belongs_to :type
    # Le poketype doit être présent
  validates :type_id, presence: true
  # Le nom doit être présent et unique
  validates :name, presence: true, uniqueness: true

  # Le niveau doit être compris entre 1 et 100
  validates :level, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 100 }

  # Le Pokémon doit avoir un type
  validates :type, presence: true


end
