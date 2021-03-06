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

ActiveRecord::Schema.define(version: 2018_10_02_010837) do

  create_table "accreditation_and_licences", force: :cascade do |t|
    t.string "name"
    t.string "reference_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.integer "record_id", null: false
    t.integer "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "additional_services", force: :cascade do |t|
    t.string "title"
    t.integer "trade_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["trade_id"], name: "index_additional_services_on_trade_id"
  end

  create_table "charges", force: :cascade do |t|
    t.string "credit_last_4"
    t.string "credit_exp_month"
    t.string "credit_exp_year"
    t.string "credit_brand"
    t.decimal "amount"
    t.boolean "subscription"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "stripe_id"
    t.string "order_title"
    t.index ["user_id"], name: "index_charges_on_user_id"
  end

  create_table "colors", force: :cascade do |t|
    t.string "color_1"
    t.string "color_2"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string "stripe_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "subscription_id"
  end

  create_table "domains", force: :cascade do |t|
    t.string "domain_name"
    t.string "dns_simple_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "available"
    t.boolean "premium"
    t.string "premium_price"
    t.string "first_name"
    t.string "last_name"
    t.string "address1"
    t.string "city"
    t.string "state_province"
    t.string "postal_code"
    t.string "country"
    t.string "email"
    t.string "phone"
    t.string "fax"
    t.string "tld"
    t.string "tld_type"
    t.string "minimum_registration"
    t.boolean "whois_privacy"
    t.boolean "auto_renew_only"
    t.boolean "idn"
    t.boolean "registration_enabled"
    t.boolean "renewal_enabled"
    t.boolean "transfer_enabled"
    t.string "registrant_id_number"
    t.string "registrant_id_type"
    t.text "extended_hash_response"
  end

  create_table "intros", force: :cascade do |t|
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "messages", force: :cascade do |t|
    t.string "full_name"
    t.string "email"
    t.string "phone"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "personal_profiles", force: :cascade do |t|
    t.string "full_name"
    t.text "bio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "role"
  end

  create_table "portfolios", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.text "content"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "service_locations", force: :cascade do |t|
    t.string "city"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "services", force: :cascade do |t|
    t.string "title"
    t.integer "trade_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["trade_id"], name: "index_services_on_trade_id"
  end

  create_table "site_services", force: :cascade do |t|
    t.integer "site_id"
    t.integer "service_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["service_id"], name: "index_site_services_on_service_id"
    t.index ["site_id"], name: "index_site_services_on_site_id"
  end

  create_table "site_trades", force: :cascade do |t|
    t.integer "site_id"
    t.integer "trade_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["site_id"], name: "index_site_trades_on_site_id"
    t.index ["trade_id"], name: "index_site_trades_on_trade_id"
  end

  create_table "sites", force: :cascade do |t|
    t.string "company_name"
    t.string "abn"
    t.string "home_town"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "trade_id"
    t.string "phone"
    t.boolean "activated"
    t.string "site_name"
    t.integer "template_id"
    t.string "template_name"
    t.text "custom_css"
    t.text "location_text"
    t.index ["template_id"], name: "index_sites_on_template_id"
    t.index ["trade_id"], name: "index_sites_on_trade_id"
    t.index ["user_id"], name: "index_sites_on_user_id"
  end

  create_table "sound_clips", force: :cascade do |t|
    t.boolean "home"
    t.boolean "templates"
    t.boolean "template_preview"
    t.boolean "email"
    t.boolean "site_show"
    t.boolean "payment"
    t.boolean "domain"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "template_customs", force: :cascade do |t|
    t.string "header_1_img"
    t.string "header_1_overlay_color"
    t.string "header_1_subtxt"
    t.string "header_1_primarytxt"
    t.string "header_1_btntxt"
    t.string "quotebar_1_subtxt"
    t.string "quote_bar_primarytxt"
    t.string "quote_bar_btntxt"
    t.string "content_6col_leftimg1"
    t.string "content_6col_leftimg2"
    t.text "content_6col_righttxt"
    t.string "content_6col_rightsubtxt"
    t.string "content_6col_rightprimarytxt"
    t.string "content_6col_rightimg1"
    t.string "content_6col_rightimg2"
    t.text "content_6col_lefttxt"
    t.string "content_6col_leftsubtxt"
    t.string "content_6col_leftprimarytxt"
    t.string "quotebox_1_subtxt"
    t.string "quotebox_1_primarytxt"
    t.string "quotebox_1_btntxt"
    t.string "services_1_primarytxt"
    t.string "about_1_img1"
    t.string "about_1_img2"
    t.string "about_1_subtxt"
    t.string "about_1_primarytxt"
    t.text "about_1_txt"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "custom_css"
  end

  create_table "templates", force: :cascade do |t|
    t.string "title"
    t.string "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "body_with_data"
  end

  create_table "trades", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "site_name"
    t.string "subdomain"
    t.string "domain"
    t.string "stripe_customer_id"
    t.boolean "admin"
    t.index ["email", "subdomain"], name: "index_users_on_email_and_subdomain", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
