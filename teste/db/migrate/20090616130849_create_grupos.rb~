class CreateGrupos < ActiveRecord::Migration
  def self.up
    create_table :grupos do |t|
      t.string :nome, :limit => 50
      t.string :descricao, :limit => 50
      t.timestamps
    end
    Grupo.create :nome => "Berçário I"
    Grupo.create :nome => "Berçário II"
    Grupo.create :nome => "Berçário III"
    Grupo.create :nome => "Maternal I"
    Grupo.create :nome => "Maternal II"

    Grupo.create :descricao => "Crianças de 4 meses à 1 ano "
    Grupo.create :descricao => "Crianças de 1 ano e 1 mes à 1 ano e 7 meses"
    Grupo.create :descricao => "Crianças de 1 ano e 8 meses à 2 anos e 4 meses"
    Grupo.create :descricao => "Crianças de 2 anos e 5 meses à 3 anos"
    Grupo.create :descricao => "Crianças de 3 anos e 1 mes à 3 anos e 6 meses"
  end

  def self.down
    drop_table :grupos
  end
end
