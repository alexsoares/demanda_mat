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

ActiveRecord::Schema.define(:version => 20090616132325) do

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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "grupos", :force => true do |t|
    t.string   "nome",       :limit => 50
    t.string   "descricao",  :limit => 50
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "regiaos", :force => true do |t|
    t.string   "nome",       :limit => 30
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "unidades", :force => true do |t|
    t.string   "nome"
    t.integer  "tipo"
    t.integer  "regiao_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
