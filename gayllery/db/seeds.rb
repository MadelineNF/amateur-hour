# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times {User.create!(firstName:"John",lastName:"Smith")}
#10.times {Collection.create!(name:"collection",description:"This is a test collection")}
#10.times {Image.create!(name:"image",description:"This is a test image",src:"http://via.placeholder.com/350x350
#")}