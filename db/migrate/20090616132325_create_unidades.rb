class CreateUnidades < ActiveRecord::Migration
  def self.up
    create_table :unidades do |t|
      t.string :nome
      t.integer :tipo
      t.references :regiao

      t.timestamps
    end
# Tipos:
    # 1 - Creche
    # 2 - EMEI
    # 3 - Casas da Criança
    # 4 - EMEF
    # 5 - CIEP

# São Jerônimo
    Unidade.create :nome => "Arapiranga", :tipo => 3 , :regiao_id => 1
    Unidade.create :nome => "Bitu", :tipo => 3, :regiao_id => 1
    Unidade.create :nome => "Maíra", :tipo => 3, :regiao_id  => 1
    Unidade.create :nome => "Juriti", :tipo => 3, :regiao_id => 1
    Unidade.create :nome => "Jacy", :tipo => 2, :regiao_id => 1
    Unidade.create :nome => "Aracy", :tipo => 2, :regiao_id => 1
    Unidade.create :nome => "CAIC", :tipo => 1, :regiao_id => 1
# Cidade Jardim
    Unidade.create :nome => "Graúna", :tipo => 3, :regiao_id => 2
    Unidade.create :nome => "Araúna", :tipo => 3, :regiao_id => 2
    Unidade.create :nome => "Carandá", :tipo => 2, :regiao_id => 2
    Unidade.create :nome => "Manaí", :tipo => 2, :regiao_id => 2
    Unidade.create :nome => "Aracati", :tipo => 2, :regiao_id => 2
    Unidade.create :nome => "Cunhataí", :tipo => 2, :regiao_id => 2
    Unidade.create :nome => "Manacá", :tipo => 1, :regiao_id => 2
    Unidade.create :nome => "Anajá", :tipo => 1, :regiao_id => 2
    Unidade.create :nome => "Chuí", :tipo => 1, :regiao_id => 2
# São Vito
    Unidade.create :nome => "Manacá", :tipo => 3, :regiao_id => 3
    Unidade.create :nome => "Potira", :tipo => 2, :regiao_id => 3
    Unidade.create :nome => "Paturi", :tipo => 2, :regiao_id => 3
    Unidade.create :nome => "Indaiá", :tipo => 2, :regiao_id => 3
    Unidade.create :nome => "Batuíra", :tipo => 2, :regiao_id => 3
    Unidade.create :nome => "Jacina", :tipo => 2, :regiao_id => 3
    Unidade.create :nome => "Curimã", :tipo => 1, :regiao_id => 3
    Unidade.create :nome => "Majoí", :tipo => 1, :regiao_id => 3
    Unidade.create :nome => "Taperá", :tipo => 1, :regiao_id => 3
# Zanaga
    Unidade.create :nome => "Curió", :tipo => 3, :regiao_id => 4
    Unidade.create :nome => "Taraguá", :tipo => 3, :regiao_id => 4
    Unidade.create :nome => "Urupê", :tipo => 3, :regiao_id => 4
    Unidade.create :nome => "Patativa", :tipo => 2, :regiao_id => 4
    Unidade.create :nome => "Araçari", :tipo => 2, :regiao_id => 4
    Unidade.create :nome => "Curumim", :tipo => 2, :regiao_id => 4
# Jardim Ipiranga
    Unidade.create :nome => "Tahíra", :tipo => 3, :regiao_id => 5
    Unidade.create :nome => "Boré", :tipo => 2, :regiao_id => 5
    Unidade.create :nome => "Ceci", :tipo => 2, :regiao_id => 5
    Unidade.create :nome => "Corimbó", :tipo => 2, :regiao_id => 5
    Unidade.create :nome => "Tangará", :tipo => 2, :regiao_id => 5
# Centro
    Unidade.create :nome => "Bacuri", :tipo => 2, :regiao_id => 6
    Unidade.create :nome => "Sabiá", :tipo => 2, :regiao_id => 6
# Praia Azul
    Unidade.create :nome => "Pitanga", :tipo => 3, :regiao_id => 7
    Unidade.create :nome => "Panamby", :tipo => 3, :regiao_id => 7

  end

  def self.down
    drop_table :unidades
  end
end
