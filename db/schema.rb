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

ActiveRecord::Schema.define(version: 2020_07_15_151411) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "conversations", force: :cascade do |t|
    t.bigint "student_id", null: false
    t.bigint "teacher_id", null: false
    t.string "klass"
    t.string "topic"
    t.string "urgency"
    t.boolean "office_hours"
    t.string "description"
    t.boolean "teacher_response"
    t.string "response"
    t.string "date"
    t.string "time"
    t.boolean "acknowledged", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["student_id"], name: "index_conversations_on_student_id"
    t.index ["teacher_id"], name: "index_conversations_on_teacher_id"
  end

  create_table "klasses", force: :cascade do |t|
    t.string "name"
    t.string "subject"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "student_classes", force: :cascade do |t|
    t.bigint "student_id", null: false
    t.bigint "teacher_class_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["student_id"], name: "index_student_classes_on_student_id"
    t.index ["teacher_class_id"], name: "index_student_classes_on_teacher_class_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "username"
    t.string "password_digest"
    t.string "email"
    t.string "dob"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "teacher_classes", force: :cascade do |t|
    t.bigint "teacher_id", null: false
    t.bigint "klass_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["klass_id"], name: "index_teacher_classes_on_klass_id"
    t.index ["teacher_id"], name: "index_teacher_classes_on_teacher_id"
  end

  create_table "teachers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "username"
    t.string "password_digest"
    t.string "subject"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "conversations", "students"
  add_foreign_key "conversations", "teachers"
  add_foreign_key "student_classes", "students"
  add_foreign_key "student_classes", "teacher_classes"
  add_foreign_key "teacher_classes", "klasses"
  add_foreign_key "teacher_classes", "teachers"
end
