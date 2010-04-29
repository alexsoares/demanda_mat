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

ActiveRecord::Schema.define(:version => 20100202154711) do

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

  create_table "grupos", :force => true do |t|
    t.string   "nome",       :limit => 50
    t.string   "descricao",  :limit => 50
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "logs", :force => true do |t|
    t.integer  "user_id"
    t.string   "obs"
    t.string   "data"
    t.integer  "crianca_id"
    t.datetime "created_at"
    t.datetime "updated_at"
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
