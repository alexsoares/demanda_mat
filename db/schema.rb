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
    t.string   "nome"
    t.integer  "unidade_id"
    t.integer  "regiao_id"
    t.date     "nascimento"
    t.integer  "grupo_id"
    t.string   "endereco"
    t.string   "numero"
    t.string   "complemento"
    t.string   "bairro"
    t.string   "tel1"
    t.string   "tel2"
    t.string   "celular"
    t.string   "responsavel"
    t.integer  "parentesco"
    t.boolean  "trabalha"
    t.string   "local_trabalho"
    t.integer  "option1"
    t.integer  "option2"
    t.integer  "option3"
    t.integer  "option4"
    t.string   "matricula"
    t.integer  "unidade_matricula"
    t.integer  "status",            :default => 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "grupos", :force => true do |t|
    t.string   "nome",       :limit => 50
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
