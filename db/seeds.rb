# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Cat.destroy_all
jeff = Cat.create!(birthdate: '2015/01/20', description: "angelic", name: "jeff", sex: "M", color: "brown")
meff = Cat.create!(birthdate: '2015/01/20', description: "angelic", name: "jeff", sex: "F", color: "orange")
beff = Cat.create!(birthdate: '2015/01/20', description: "angelic", name: "jeff", sex: "F", color: "black")

# create_table "cats", force: :cascade do |t|
#     t.date "birthdate", null: false
#     t.text "description"
#     t.string "name", null: false
#     t.string "sex", limit: 1, null: false
#     t.string "color", null: false
#     t.datetime "created_at", null: false
#     t.datetime "updated_at", null: false