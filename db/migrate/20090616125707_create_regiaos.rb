class CreateRegiaos < ActiveRecord::Migration
  def self.up
    create_table :regiaos do |t|
      t.string :nome, :limit => 30

      t.timestamps
    end
    Regiao.create :nome => "São Jerônimo"
    Regiao.create :nome => "Cidade Jardim"
    Regiao.create :nome => "São Vito"
    Regiao.create :nome => "Zanaga"
    Regiao.create :nome => "Jardim Ipiranga"
    Regiao.create :nome => "Centro"
    Regiao.create :nome => "Praia Azul"
  end

  def self.down
    drop_table :regiaos
  end
end

