# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160904083830) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "alugueres", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "carrinhos", force: :cascade do |t|
    t.integer  "estado",     default: 1, null: false
    t.integer  "usuario_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.index ["usuario_id"], name: "index_carrinhos_on_usuario_id", using: :btree
  end

  create_table "fotografias", force: :cascade do |t|
    t.integer  "imageable_id"
    t.string   "imageable_type"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["imageable_id"], name: "index_fotografias_on_imageable_id", using: :btree
    t.index ["imageable_type"], name: "index_fotografias_on_imageable_type", using: :btree
  end

  create_table "gerais", force: :cascade do |t|
    t.string   "nome"
    t.string   "descricao"
    t.integer  "classificacao"
    t.integer  "serviceable_id"
    t.string   "serviceable_type"
    t.decimal  "preco"
    t.integer  "estado",           default: 1, null: false
    t.integer  "loja_id"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.index ["loja_id"], name: "index_gerais_on_loja_id", using: :btree
    t.index ["serviceable_id"], name: "index_gerais_on_serviceable_id", using: :btree
    t.index ["serviceable_type"], name: "index_gerais_on_serviceable_type", using: :btree
  end

  create_table "horarios", force: :cascade do |t|
    t.integer  "dia"
    t.time     "entrada"
    t.time     "saida"
    t.integer  "loja_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["loja_id"], name: "index_horarios_on_loja_id", using: :btree
  end

  create_table "localizacoes", force: :cascade do |t|
    t.decimal  "latitude",          default: "0.0", null: false
    t.decimal  "Latitude",          default: "0.0", null: false
    t.string   "city"
    t.string   "address"
    t.string   "state"
    t.string   "state_code"
    t.string   "postal_code"
    t.string   "country"
    t.string   "country_code"
    t.integer  "tipo",              default: 1,     null: false
    t.string   "endereco"
    t.string   "street"
    t.integer  "locationable_id"
    t.string   "locationable_type"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.index ["locationable_id"], name: "index_localizacoes_on_locationable_id", using: :btree
    t.index ["locationable_type"], name: "index_localizacoes_on_locationable_type", using: :btree
  end

  create_table "lojas", force: :cascade do |t|
    t.string   "nome"
    t.string   "email"
    t.string   "telefone"
    t.integer  "estado",           default: 1, null: false
    t.integer  "loja_id"
    t.integer  "representante_id"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.index ["loja_id"], name: "index_lojas_on_loja_id", using: :btree
    t.index ["representante_id"], name: "index_lojas_on_representante_id", using: :btree
  end

  create_table "pedidos", force: :cascade do |t|
    t.integer  "estado",         default: 1,     null: false
    t.integer  "quantidade",     default: 1,     null: false
    t.decimal  "desconto",       default: "0.0", null: false
    t.decimal  "preco_unitario", default: "0.0", null: false
    t.decimal  "preco_total",    default: "0.0", null: false
    t.integer  "tipo",           default: 1,     null: false
    t.integer  "usuario_id"
    t.integer  "geral_id"
    t.integer  "carrinho_id"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.index ["carrinho_id"], name: "index_pedidos_on_carrinho_id", using: :btree
    t.index ["geral_id"], name: "index_pedidos_on_geral_id", using: :btree
    t.index ["usuario_id"], name: "index_pedidos_on_usuario_id", using: :btree
  end

  create_table "piteus", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "produtos", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "servicos", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string   "nome"
    t.string   "apelido"
    t.string   "telefone"
    t.integer  "genero"
    t.date     "data_de_nascimento"
    t.integer  "roles_mask",             default: 12, null: false
    t.string   "nome_da_empresa"
    t.integer  "loja_id"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.index ["email"], name: "index_usuarios_on_email", unique: true, using: :btree
    t.index ["loja_id"], name: "index_usuarios_on_loja_id", using: :btree
    t.index ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true, using: :btree
  end

end
