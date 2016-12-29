# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
#   PILLS - Pillbox has 7 slots. We will initialize all seven, with blank names,
#   etc.
#
Box.delete_all
Pill.delete_all

@box = Box.new
@box.save

@first = @box.pills.build(slot: "First")
@first.save
puts @first.slot

@second = @box.pills.build(slot: "Second")
@second.save
puts @second.slot

@third = @box.pills.build(slot: "Third")
@third.save
puts @third.slot

@fourth = @box.pills.build(slot: "Fourth")
@fourth.save
puts @fourth.slot

@fifth = @box.pills.build(slot: "Fifth")
@fifth.save
puts @fifth.slot

@sixth = @box.pills.build(slot: "Sixth")
@sixth.save
puts @sixth.slot

@seventh = @box.pills.build(slot: "Seventh")
@seventh.save
puts @seventh.slot
