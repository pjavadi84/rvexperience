# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_08_11_070131) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "city"
    t.string "state"
    t.integer "zipcode"
    t.integer "phone_number"
    t.integer "business_open"
    t.integer "business_close"
    t.string "opearting_days"
    t.binary "picture"
    t.binary "logo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "destinations", force: :cascade do |t|
    t.string "weather_condition"
    t.string "geography"
    t.string "address"
    t.string "city"
    t.string "state"
    t.integer "zipcode"
    t.integer "capacity"
    t.boolean "shower"
    t.boolean "restroom"
    t.boolean "internet"
    t.boolean "kid_friendly"
    t.integer "physical_demand"
    t.binary "image"
    t.integer "phone_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "likes", force: :cascade do |t|
    t.integer "likes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "reservations", force: :cascade do |t|
    t.date "start_date"
    t.date "end_date"
    t.string "pickup_location"
    t.string "dropoff_location"
    t.integer "guest_quantity"
    t.integer "rental_duration"
    t.float "price_per_night"
    t.float "subtotal"
    t.float "total"
    t.float "tax"
    t.string "coupon_code"
    t.float "discount_price"
    t.text "additional_notes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "rvs", force: :cascade do |t|
    t.string "make"
    t.string "model"
    t.integer "length"
    t.integer "width"
    t.integer "height"
    t.string "fuel_type"
    t.integer "capacity"
    t.boolean "air_conditioner"
    t.boolean "jacuzzi"
    t.boolean "shower"
    t.boolean "washer_dryer"
    t.boolean "internet"
    t.integer "current_mile"
    t.binary "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "age"
    t.integer "number_of_guests"
    t.string "address"
    t.string "city"
    t.string "state"
    t.string "country"
    t.integer "zipcode"
    t.string "email"
    t.integer "phone_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end