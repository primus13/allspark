# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150501095955) do

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "color_families", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "colorfamilies", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "colors", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.text     "description"
    t.integer  "colorfamily_id", null: false
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "colors", ["colorfamily_id"], name: "index_colors_on_colorfamily_id"

  create_table "countries", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "devices", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "manufacturer_id"
    t.integer  "category_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "devices", ["category_id"], name: "index_devices_on_category_id"
  add_index "devices", ["manufacturer_id"], name: "index_devices_on_manufacturer_id"

  create_table "filament_colors", force: :cascade do |t|
    t.integer  "filament_id", null: false
    t.integer  "color_id",    null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "filament_colors", ["color_id"], name: "index_filament_colors_on_color_id"
  add_index "filament_colors", ["filament_id"], name: "index_filament_colors_on_filament_id"

  create_table "filament_variants", force: :cascade do |t|
    t.integer  "filament_id", null: false
    t.integer  "variant_id",  null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "filament_variants", ["filament_id"], name: "index_filament_variants_on_filament_id"
  add_index "filament_variants", ["variant_id"], name: "index_filament_variants_on_variant_id"

  create_table "filaments", force: :cascade do |t|
    t.string   "name",            null: false
    t.text     "description"
    t.integer  "manufacturer_id", null: false
    t.integer  "material_id",     null: false
    t.integer  "category_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "filaments", ["category_id"], name: "index_filaments_on_category_id"
  add_index "filaments", ["manufacturer_id"], name: "index_filaments_on_manufacturer_id"
  add_index "filaments", ["material_id"], name: "index_filaments_on_material_id"

  create_table "heatbeds", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "manufacturer_id"
    t.integer  "category_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "heatbeds", ["category_id"], name: "index_heatbeds_on_category_id"
  add_index "heatbeds", ["manufacturer_id"], name: "index_heatbeds_on_manufacturer_id"

  create_table "hotends", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "manufacturer_id"
    t.integer  "category_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "hotends", ["category_id"], name: "index_hotends_on_category_id"
  add_index "hotends", ["manufacturer_id"], name: "index_hotends_on_manufacturer_id"

  create_table "manufacturers", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "manufacturers", ["category_id"], name: "index_manufacturers_on_category_id"

  create_table "materials", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.string   "scientificname"
    t.text     "description"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "nozzles", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "manufacturer_id"
    t.integer  "category_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "nozzles", ["category_id"], name: "index_nozzles_on_category_id"
  add_index "nozzles", ["manufacturer_id"], name: "index_nozzles_on_manufacturer_id"

  create_table "printers", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "manufacturer_id"
    t.integer  "category_id"
    t.integer  "device_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "printers", ["category_id"], name: "index_printers_on_category_id"
  add_index "printers", ["device_id"], name: "index_printers_on_device_id"
  add_index "printers", ["manufacturer_id"], name: "index_printers_on_manufacturer_id"

  create_table "projects", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "user_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  add_index "projects", ["user_id"], name: "index_projects_on_user_id"

  create_table "technologies", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "technologies", ["category_id"], name: "index_technologies_on_category_id"

  create_table "uniquefilaments", force: :cascade do |t|
    t.integer  "filament_variant_id", null: false
    t.integer  "color_id",            null: false
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "uniquefilaments", ["color_id"], name: "index_uniquefilaments_on_color_id"
  add_index "uniquefilaments", ["filament_variant_id"], name: "index_uniquefilaments_on_filament_variant_id"

  create_table "user_filament_variants", force: :cascade do |t|
    t.integer  "user_id",             null: false
    t.integer  "filament_variant_id", null: false
    t.integer  "user_printer_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "user_filament_variants", ["filament_variant_id"], name: "index_user_filament_variants_on_filament_variant_id"
  add_index "user_filament_variants", ["user_id"], name: "index_user_filament_variants_on_user_id"
  add_index "user_filament_variants", ["user_printer_id"], name: "index_user_filament_variants_on_user_printer_id"

  create_table "user_heatbeds", force: :cascade do |t|
    t.integer  "user_id",         null: false
    t.integer  "heatbed_id",      null: false
    t.integer  "user_printer_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "user_heatbeds", ["heatbed_id"], name: "index_user_heatbeds_on_heatbed_id"
  add_index "user_heatbeds", ["user_id"], name: "index_user_heatbeds_on_user_id"
  add_index "user_heatbeds", ["user_printer_id"], name: "index_user_heatbeds_on_user_printer_id"

  create_table "user_hotends", force: :cascade do |t|
    t.integer  "user_id",         null: false
    t.integer  "hotend_id",       null: false
    t.integer  "user_printer_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "user_hotends", ["hotend_id"], name: "index_user_hotends_on_hotend_id"
  add_index "user_hotends", ["user_id"], name: "index_user_hotends_on_user_id"
  add_index "user_hotends", ["user_printer_id"], name: "index_user_hotends_on_user_printer_id"

  create_table "user_nozzles", force: :cascade do |t|
    t.integer  "user_id",         null: false
    t.integer  "nozzle_id",       null: false
    t.integer  "user_printer_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "user_nozzles", ["nozzle_id"], name: "index_user_nozzles_on_nozzle_id"
  add_index "user_nozzles", ["user_id"], name: "index_user_nozzles_on_user_id"
  add_index "user_nozzles", ["user_printer_id"], name: "index_user_nozzles_on_user_printer_id"

  create_table "user_printer_settings", force: :cascade do |t|
    t.integer  "user_id",                  null: false
    t.integer  "user_printer_setup_id",    null: false
    t.integer  "user_filament_variant_id", null: false
    t.float    "print_speed"
    t.float    "nozzle_size"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "user_printer_settings", ["user_filament_variant_id"], name: "index_user_printer_settings_on_user_filament_variant_id"
  add_index "user_printer_settings", ["user_id"], name: "index_user_printer_settings_on_user_id"
  add_index "user_printer_settings", ["user_printer_setup_id"], name: "index_user_printer_settings_on_user_printer_setup_id"

  create_table "user_printer_setups", force: :cascade do |t|
    t.integer  "user_id",         null: false
    t.integer  "user_printer_id", null: false
    t.integer  "user_nozzle_id"
    t.integer  "user_heatbed_id"
    t.integer  "user_hotend_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "user_printer_setups", ["user_heatbed_id"], name: "index_user_printer_setups_on_user_heatbed_id"
  add_index "user_printer_setups", ["user_hotend_id"], name: "index_user_printer_setups_on_user_hotend_id"
  add_index "user_printer_setups", ["user_id"], name: "index_user_printer_setups_on_user_id"
  add_index "user_printer_setups", ["user_nozzle_id"], name: "index_user_printer_setups_on_user_nozzle_id"
  add_index "user_printer_setups", ["user_printer_id"], name: "index_user_printer_setups_on_user_printer_id"

  create_table "user_printers", force: :cascade do |t|
    t.integer  "user_id",    null: false
    t.integer  "printer_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "user_printers", ["printer_id"], name: "index_user_printers_on_printer_id"
  add_index "user_printers", ["user_id"], name: "index_user_printers_on_user_id"

  create_table "user_uniquefilaments", force: :cascade do |t|
    t.integer  "user_id",           null: false
    t.integer  "uniquefilament_id", null: false
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "user_uniquefilaments", ["uniquefilament_id"], name: "index_user_uniquefilaments_on_uniquefilament_id"
  add_index "user_uniquefilaments", ["user_id"], name: "index_user_uniquefilaments_on_user_id"

  create_table "userfiles", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "project_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "file_file_name"
    t.string   "file_content_type"
    t.integer  "file_file_size"
    t.datetime "file_updated_at"
  end

  add_index "userfiles", ["project_id"], name: "index_userfiles_on_project_id"

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
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.integer  "country_id"
  end

  add_index "users", ["country_id"], name: "index_users_on_country_id"
  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "variants", force: :cascade do |t|
    t.integer  "technology_id", null: false
    t.float    "diameter"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "name"
  end

  add_index "variants", ["technology_id"], name: "index_variants_on_technology_id"

end
