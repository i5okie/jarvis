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

ActiveRecord::Schema.define(version: 20170206213556) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.string   "author_type"
    t.integer  "author_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "contact_notes", force: :cascade do |t|
    t.integer  "contact_id"
    t.integer  "note_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contact_id"], name: "index_contact_notes_on_contact_id"
    t.index ["note_id"], name: "index_contact_notes_on_note_id"
  end

  create_table "contacts", force: :cascade do |t|
    t.string   "contact_alias"
    t.string   "contact_type"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email_address"
    t.string   "phone_number"
    t.string   "extension"
    t.string   "mobile_phone_number"
    t.integer  "customer_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["customer_id"], name: "index_contacts_on_customer_id"
  end

  create_table "customer_contacts", force: :cascade do |t|
    t.integer  "contact_id"
    t.integer  "customer_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["contact_id"], name: "index_customer_contacts_on_contact_id"
    t.index ["customer_id"], name: "index_customer_contacts_on_customer_id"
  end

  create_table "customer_notes", force: :cascade do |t|
    t.integer  "customer_id"
    t.integer  "note_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["customer_id"], name: "index_customer_notes_on_customer_id"
    t.index ["note_id"], name: "index_customer_notes_on_note_id"
  end

  create_table "customer_shipping_addresses", force: :cascade do |t|
    t.integer  "shipping_address_id"
    t.integer  "customer_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["customer_id"], name: "index_customer_shipping_addresses_on_customer_id"
    t.index ["shipping_address_id"], name: "index_customer_shipping_addresses_on_shipping_address_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string   "name"
    t.string   "phone_number"
    t.string   "fax_number"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "items", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "manufacturer"
    t.string   "model"
    t.string   "length"
    t.string   "width"
    t.string   "height"
    t.string   "shipping_weight_lbs"
    t.string   "shipping_weight_kgs"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "weight"
  end

  create_table "notes", force: :cascade do |t|
    t.string   "author"
    t.string   "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "purchased_item_notes", force: :cascade do |t|
    t.integer  "purchased_item_id"
    t.integer  "note_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["note_id"], name: "index_purchased_item_notes_on_note_id"
    t.index ["purchased_item_id"], name: "index_purchased_item_notes_on_purchased_item_id"
  end

  create_table "purchased_items", force: :cascade do |t|
    t.integer  "item_id"
    t.integer  "sales_order_id"
    t.string   "serial_number"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["item_id"], name: "index_purchased_items_on_item_id"
    t.index ["sales_order_id"], name: "index_purchased_items_on_sales_order_id"
  end

  create_table "sales_orders", force: :cascade do |t|
    t.string   "number"
    t.string   "date"
    t.integer  "customer_id"
    t.string   "shipping_address"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["customer_id"], name: "index_sales_orders_on_customer_id"
  end

  create_table "shipping_address_notes", force: :cascade do |t|
    t.integer  "shipping_address_id"
    t.integer  "note_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["note_id"], name: "index_shipping_address_notes_on_note_id"
    t.index ["shipping_address_id"], name: "index_shipping_address_notes_on_shipping_address_id"
  end

  create_table "shipping_addresses", force: :cascade do |t|
    t.string   "address_alias"
    t.string   "address_type"
    t.string   "address_1"
    t.string   "address_2"
    t.string   "address_city"
    t.string   "address_country"
    t.string   "address_state"
    t.string   "address_zip"
    t.integer  "customer_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["customer_id"], name: "index_shipping_addresses_on_customer_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
