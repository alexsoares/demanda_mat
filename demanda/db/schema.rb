# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100517111255) do

  create_table "criancas", :force => true do |t|
    t.string   "nome",              :limit => 50
    t.string   "mae",               :limit => 50
    t.integer  "unidade_id"
    t.integer  "regiao_id"
    t.date     "nascimento"
    t.integer  "grupo_id"
    t.string   "endereco",          :limit => 50
    t.string   "numero",            :limit => 10
    t.string   "complemento",       :limit => 30
    t.string   "bairro",            :limit => 30
    t.string   "tel1"
    t.string   "tel2"
    t.string   "nomerecado",        :limit => 50
    t.string   "celular"
    t.integer  "responsavel"
    t.string   "nome_responsavel",  :limit => 30
    t.string   "parentesco",                       :default => "0"
    t.boolean  "trabalha"
    t.string   "local_trabalho"
    t.string   "fonetrabalho"
    t.integer  "option1",                          :default => 0
    t.integer  "option2",                          :default => 0
    t.integer  "option3",                          :default => 0
    t.integer  "option4",                          :default => 0
    t.integer  "matricula",                        :default => 0
    t.integer  "unidade_matricula",                :default => 0
    t.string   "obs",               :limit => 100
    t.integer  "status",                           :default => 0
    t.integer  "posicao",                          :default => 0
    t.boolean  "servidor_publico",                 :default => false
    t.boolean  "transferencia",                    :default => false
    t.string   "obs_transf",        :limit => 100
    t.boolean  "n_especial",                       :default => false
    t.string   "necessidade",       :limit => 100
    t.boolean  "mudou_endereco",                   :default => false
    t.boolean  "gemelar",                          :default => false
    t.string   "obs_irmao",         :limit => 50
    t.string   "historico_contato", :limit => 240
    t.integer  "user_id",                          :default => 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "documents", :force => true do |t|
    t.string   "titulo"
    t.text     "descricao"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "document_file_name"
    t.string   "document_content_type"
    t.integer  "document_file_size"
    t.datetime "document_updated_at"
  end

  create_table "faqs", :force => true do |t|
    t.integer  "user_id"
    t.text     "duvida"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "grupos", :force => true do |t|
    t.string   "nome",       :limit => 50
    t.string   "descricao",  :limit => 50
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "logs", :force => true do |t|
    t.integer  "user_id"
    t.string   "obs"
    t.integer  "crianca_id"
    t.string   "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "matriculas", :force => true do |t|
    t.integer  "crianca_id"
    t.integer  "ra"
    t.string   "ano_1"
    t.string   "ano_2"
    t.string   "ano_3"
    t.string   "ano_4"
    t.integer  "grupo_1"
    t.integer  "grupo_2"
    t.integer  "grupo_3"
    t.integer  "grupo_4"
    t.string   "pc_manha_1"
    t.string   "pc_manha_2"
    t.string   "pc_manha_3"
    t.string   "pc_manha_4"
    t.string   "pc_tarde_1"
    t.string   "pc_tarde_2"
    t.string   "pc_tarde_3"
    t.string   "pc_tarde_4"
    t.string   "nome_pai"
    t.integer  "idade_pai"
    t.integer  "estado_civil"
    t.date     "dt_nasc_pai"
    t.integer  "escolaridade_pai"
    t.string   "profissao_pai"
    t.string   "local_trabalho_pai"
    t.string   "end_trab_pai"
    t.string   "horario_trab_pai"
    t.string   "fone_res_pai"
    t.string   "fone_com_pai"
    t.string   "fone_celular_pai"
    t.string   "nome_mae"
    t.integer  "idade_mae"
    t.integer  "estado_civil_mae"
    t.date     "dt_nasc_mae"
    t.integer  "escolaridade_mae"
    t.string   "profissao_mae"
    t.string   "local_trabalho_mae"
    t.string   "end_trab_mae"
    t.string   "horario_trab_mae"
    t.string   "fone_res_mae"
    t.string   "fone_com_mae"
    t.string   "fone_celular_mae"
    t.string   "nome_resp"
    t.integer  "idade_resp"
    t.integer  "estado_civil_resp"
    t.date     "dt_nasc_resp"
    t.integer  "escolaridade_resp"
    t.string   "profissao_resp"
    t.string   "local_trabalho_resp"
    t.string   "end_trab_resp"
    t.string   "horario_trab_resp"
    t.string   "fone_res_resp"
    t.string   "fone_com_resp"
    t.string   "fone_celular_resp"
    t.integer  "num_filhos"
    t.boolean  "pais_vivem_juntos"
    t.string   "tipo_relacionamento"
    t.string   "moradia"
    t.boolean  "ministrar_p_s"
    t.boolean  "tratamento"
    t.boolean  "ap_fluor"
    t.boolean  "atividades_extra_classe"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "unidade_id"
    t.string   "local_nascimento"
    t.string   "uf"
    t.string   "num_registro"
    t.integer  "folhas_reg"
    t.string   "livro_reg"
    t.string   "cor_raca"
    t.boolean  "PNE"
    t.string   "religiao"
    t.string   "contato_emergencia"
    t.string   "telefone_emergencia"
    t.string   "rua_emergencia"
    t.string   "num_emergencia"
    t.string   "bairro_emergencia"
  end

  create_table "regiaos", :force => true do |t|
    t.string   "nome",       :limit => 30
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", :force => true do |t|
    t.string "name"
  end

  create_table "roles_users", :force => true do |t|
    t.integer "role_id"
    t.integer "user_id"
  end

  add_index "roles_users", ["role_id"], :name => "index_roles_users_on_role_id"
  add_index "roles_users", ["user_id"], :name => "index_roles_users_on_user_id"

  create_table "unidades", :force => true do |t|
    t.string   "nome"
    t.integer  "tipo"
    t.integer  "regiao_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "login"
    t.string   "email"
    t.string   "crypted_password",          :limit => 40
    t.string   "salt",                      :limit => 40
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_token"
    t.datetime "remember_token_expires_at"
    t.string   "activation_code",           :limit => 40
    t.datetime "activated_at"
  end

end
