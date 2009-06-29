class CreateCriancas < ActiveRecord::Migration
  def self.up
    create_table :criancas do |t|
      t.string :nome
      t.references :unidade
      t.references :regiao
      t.date :nascimento
      t.references :grupo
      t.string :endereco
      t.string :numero
      t.string :complemento
      t.string :bairro
      t.string :tel1
      t.string :tel2
      t.string :celular
      t.string :responsavel
      t.integer :parentesco
      t.boolean :trabalha
      t.string :local_trabalho
      t.integer :option1
      t.integer :option2
      t.integer :option3
      t.integer :option4
      t.string :matricula
      t.integer :unidade_matricula
      t.integer :status, :default => 0 

      t.timestamps
    end
  end

  def self.down
    drop_table :criancas
  end
end
