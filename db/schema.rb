# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_06_21_064100) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "offered_services", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "img_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "picked_services", force: :cascade do |t|
    t.bigint "offered_service_id"
    t.bigint "quote_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["offered_service_id"], name: "index_picked_services_on_offered_service_id"
    t.index ["quote_id"], name: "index_picked_services_on_quote_id"
  end

  create_table "quotes", force: :cascade do |t|
    t.string "status", default: "submitted"
    t.decimal "price", precision: 9, scale: 2, default: "0.0"
    t.string "client_name"
    t.string "email"
    t.string "phone"
    t.string "project_type"
    t.string "floors"
    t.integer "building_sqft"
    t.boolean "garage"
    t.string "roof_material"
    t.string "pitch_of_roof"
    t.string "gutter_sqft"
    t.string "ext_material"
    t.boolean "screen_removal"
    t.string "door_material"
    t.integer "flt_surface_sqft"
    t.string "driveway_size"
    t.text "comments"
    t.boolean "roof_services"
    t.boolean "gutter_cleaning"
    t.boolean "rust_removal"
    t.boolean "building_wash"
    t.boolean "flat_surfaces"
    t.boolean "driveway"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
end
