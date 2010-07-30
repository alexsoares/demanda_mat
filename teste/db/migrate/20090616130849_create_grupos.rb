class CreateGrupos < ActiveRecord::Migration
  def self.up
    create_table :grupos do |t|
      t.string :nome, :limit => 50
      t.string :descricao, :limit => 50
      t.timestamps
    end
    Grupo.create :nome => "BERCARIO I", :descricao => "CRIANCAS DE 4 MESES A 1 ANO "
    Grupo.create :nome => "BERCARIO II", :descricao => "CRIANCAS DE 1 ANO E 1 MES A 1 ANO E 7 MESES"
    Grupo.create :nome => "BERCARIO III", :descricao => "CRIANCAS DE 1 ANO E 8 MESES A 2 ANOS E 4 MESES"
    Grupo.create :nome => "MATERNAL I", :descricao => "CRIANCAS DE 2 ANOS E 5 MESES A 3 ANOS"
    Grupo.create :nome => "MATERNAL II", :descricao => "CRIANCAS DE 3 ANOS E 1 MES A 3 ANOS E 6 MESES"
    Grupo.create :nome => "NIVEL I", :descricao => "CRIANCAS DE 3 ANOS E 7 MESES A 4 ANOS E 6 MESES "
    Grupo.create :nome => "NIVEL II", :descricao => "CRIANCAS DE 4 ANOS E 7 MESES A 5 ANOS E 6 MESES "


  end

  def self.down
    drop_table :grupos
  end
end
