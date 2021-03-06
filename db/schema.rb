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

ActiveRecord::Schema.define(version: 2020_04_06_162751) do

  create_table "add_assignment_student_tables", force: :cascade do |t|
    t.integer "assignment_id", null: false
    t.integer "student_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["assignment_id"], name: "index_add_assignment_student_tables_on_assignment_id"
    t.index ["student_id"], name: "index_add_assignment_student_tables_on_student_id"
  end

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.integer "school_id"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "assignments", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "class_room_id"
    t.integer "number_grade"
    t.integer "student_id"
    t.index ["class_room_id"], name: "index_assignments_on_class_room_id"
  end

  create_table "class_rooms", force: :cascade do |t|
    t.integer "size", default: 20
    t.string "subject"
    t.string "students"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "gradebook_id"
    t.integer "student_id"
    t.integer "assignment_id"
    t.integer "teacher_id"
    t.index ["assignment_id"], name: "index_class_rooms_on_assignment_id"
    t.index ["student_id"], name: "index_class_rooms_on_student_id"
  end

  create_table "gradebooks", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "assignment_id"
    t.integer "grades_id"
    t.integer "student_id"
    t.index ["student_id"], name: "index_gradebooks_on_student_id"
  end

  create_table "qualifications", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "students", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "age"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "class_room_id"
    t.integer "assignment_id"
  end

  create_table "teachers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "qualification_id"
  end

  add_foreign_key "add_assignment_student_tables", "assignments"
  add_foreign_key "add_assignment_student_tables", "students"
  add_foreign_key "assignments", "class_rooms"
  add_foreign_key "class_rooms", "assignments"
  add_foreign_key "class_rooms", "students"
  add_foreign_key "gradebooks", "students"
end
