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

ActiveRecord::Schema.define(version: 2021_03_08_081444) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "dsps", force: :cascade do |t|
    t.string "name"
    t.string "dsp_admin_name"
    t.string "dsp_admin_surname"
    t.string "dsp_admin_email"
    t.string "dsp_admin_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tracks", force: :cascade do |t|
    t.bigint "dsp_id", null: false
    t.string "route_code"
    t.string "service_type"
    t.time "wave"
    t.string "staging_location"
    t.integer "wave_no"
    t.string "driver"
    t.integer "pad"
    t.integer "cycle"
    t.time "arrive_at_offsite"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["dsp_id"], name: "index_tracks_on_dsp_id"
  end

  add_foreign_key "tracks", "dsps"
end
