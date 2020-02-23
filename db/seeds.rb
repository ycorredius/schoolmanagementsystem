# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
qualifications = Qualification.create([{title: "Bachelor of Science in Early Childhood Developement"},{title: "Master of Arts in Teahcing"},{title:"Master’s in English Education" },{title:"Master’s in Mathematics Education"}, {title: "Master’s in Special Education"},{title: "Master’ in Education Leadership"}])

Teacher.create([{first_name: "Charlie", last_name:"doe",email:"doe1@gmail.com"}, {first_name: "Susie", last_name:"doe",email:"doe2@gmail.com"},{first_name: "Cindy", last_name:"doe",email:"doe3@gmail.com"}])