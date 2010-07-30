class AddCamposToMatriculas < ActiveRecord::Migration
  def self.up
    add_column :matriculas, :local_nascimento, :string
    add_column :matriculas, :uf, :string
    add_column :matriculas, :num_registro, :string
    add_column :matriculas, :folhas_reg, :integer
    add_column :matriculas, :livro_reg, :string
    add_column :matriculas, :cor_raca, :string
    add_column :matriculas, :PNE, :boolean
    add_column :matriculas, :religiao, :string
    add_column :matriculas, :contato_emergencia, :string
    add_column :matriculas, :telefone_emergencia, :string
    add_column :matriculas, :rua_emergencia, :string
    add_column :matriculas, :num_emergencia, :string
    add_column :matriculas, :bairro_emergencia, :string
  end

  def self.down
    remove_column :matriculas, :bairro_emergencia
    remove_column :matriculas, :num_emergencia
    remove_column :matriculas, :rua_emergencia
    remove_column :matriculas, :telefone_emergencia
    remove_column :matriculas, :contato_emergencia
    remove_column :matriculas, :religiao
    remove_column :matriculas, :PNE
    remove_column :matriculas, :cor_raca
    remove_column :matriculas, :livro_reg
    remove_column :matriculas, :folhas_reg
    remove_column :matriculas, :num_registro
    remove_column :matriculas, :uf
    remove_column :matriculas, :local_nascimento
  end
end
