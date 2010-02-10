class CreateRegiaos < ActiveRecord::Migration
  def self.up
    create_table :regiaos do |t|
      t.string :nome, :limit => 30

      t.timestamps
    end
    Regiao.create :nome => "SAO JERONIMO"
    Regiao.create :nome => "CIDADE JARDIM"
    Regiao.create :nome => "SAO VITO"
    Regiao.create :nome => "ZANAGA"
    Regiao.create :nome => "JARDIM IPIRANGA"
    Regiao.create :nome => "CENTRO"
    Regiao.create :nome => "PRAIA AZUL"
   end

  def self.down
    drop_table :regiaos
  end
end

