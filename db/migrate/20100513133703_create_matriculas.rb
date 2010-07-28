class CreateMatriculas < ActiveRecord::Migration
  def self.up
    create_table :matriculas do |t|
      t.references :crianca
      t.integer :ra
      t.string :ano_1
      t.string :ano_2
      t.string :ano_3
      t.string :ano_4
      t.integer :grupo_1
      t.integer :grupo_2
      t.integer :grupo_3
      t.integer :grupo_4
      t.string :pc_manha_1
      t.string :pc_manha_2
      t.string :pc_manha_3
      t.string :pc_manha_4
      t.string :pc_tarde_1
      t.string :pc_tarde_2
      t.string :pc_tarde_3
      t.string :pc_tarde_4
      t.string :nome_pai
      t.integer :idade_pai
      t.integer :estado_civil
      t.date :dt_nasc_pai
      t.integer :escolaridade_pai
      t.string :profissao_pai
      t.string :local_trabalho_pai
      t.string :end_trab_pai
      t.string :horario_trab_pai
      t.string :fone_res_pai
      t.string :fone_com_pai
      t.string :fone_celular_pai
      t.string :nome_mae
      t.integer :idade_mae
      t.integer :estado_civil_mae
      t.date :dt_nasc_mae
      t.integer :escolaridade_mae
      t.string :profissao_mae
      t.string :local_trabalho_mae
      t.string :end_trab_mae
      t.string :horario_trab_mae
      t.string :fone_res_mae
      t.string :fone_com_mae
      t.string :fone_celular_mae
      t.string :nome_resp
      t.integer :idade_resp
      t.integer :estado_civil_resp
      t.date :dt_nasc_resp
      t.integer :escolaridade_resp
      t.string :profissao_resp
      t.string :local_trabalho_resp
      t.string :end_trab_resp
      t.string :horario_trab_resp
      t.string :fone_res_resp
      t.string :fone_com_resp
      t.string :fone_celular_resp
      t.integer :num_filhos
      t.boolean :pais_vivem_juntos
      t.string :tipo_relacionamento
      t.string :moradia
      t.boolean :ministrar_p_s
      t.boolean :tratamento
      t.boolean :ap_fluor
      t.boolean :atividades_extra_classe

      t.timestamps
    end
  end

  def self.down
    drop_table :matriculas
  end
end
