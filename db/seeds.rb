# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Qualification.create([{title: "Bachelor of Science in Early Childhood Developement"},{title: "Master of Arts in Teahcing"},{title:"Master’s in English Education" },{title:"Master’s in Mathematics Education"}, {title: "Master’s in Special Education"},{title: "Master’ in Education Leadership"}])
Admin.create(email: "ycorredius@gmail.com",password:"password",password_confirmation:"password")
Teacher.create([{first_name: "Charlie", last_name:"doe",email:"doe1@gmail.com"}, {first_name: "Susie", last_name:"doe",email:"doe2@gmail.com"},{first_name: "Cindy", last_name:"doe",email:"doe3@gmail.com"}])
ClassRoom.create({subject: "Math",teacher_id: 1})
Student.create([
    {first_name:"liz", last_name:'doe' , email:'sometemp1@email.com' , age: 20} ,{first_name:"eric", last_name:'doe' , email:'sometemp12@email.com' , age: 20 },{first_name:"anna", last_name:'doe' , email:'sometemp13@email.com' , age: 20 },{first_name:"sean", last_name:'doe' , email:'sometemp24@email.com' , age: 20 },
    {first_name:"tyler", last_name:'doe' , email:'sometemp2@email.com' , age: 20} ,{first_name:"erica", last_name:'doe' , email:'sometemp11@email.com' , age: 20 },{first_name:"john", last_name:'doe' , email:'sometemp14@email.com' , age: 20 },{first_name:"sally", last_name:'doe' , email:'sometemp23@email.com' , age: 20 },
    {first_name:"taylor", last_name:'doe' , email:'sometemp3@email.com' , age: 20} ,{first_name:"sara", last_name:'doe' , email:'sometemp10@email.com' , age: 20 },{first_name:"tim", last_name:'doe' , email:'sometemp15@email.com' , age: 20 },{first_name:"alex", last_name:'doe' , email:'sometemp22@email.com' , age: 20 },
    {first_name:"susan", last_name:'doe' , email:'sometemp4@email.com' , age: 20} ,{first_name:"noah", last_name:'doe' , email:'sometemp9@email.com' , age: 20 },{first_name:"tom", last_name:'doe' , email:'sometemp16@email.com' , age: 20 },{first_name:"jill", last_name:'doe' , email:'sometemp21@email.com' , age: 20 },
    {first_name:"bill", last_name:'doe' , email:'sometemp5@email.com' , age: 20} ,{first_name:"jaden", last_name:'doe' , email:'sometemp8@email.com' , age: 20 },{first_name:"jame", last_name:'doe' , email:'sometemp17@email.com' , age: 20 },{first_name:"shaq", last_name:'doe' , email:'sometemp20@email.com' , age: 20 },
    {first_name:"will", last_name:'doe' , email:'sometemp6@email.com' , age: 20} ,{first_name:"aden", last_name:'doe' , email:'sometemp7@email.com' , age: 20 },{first_name:"peter", last_name:'doe' , email:'sometemp18@email.com' , age: 20 },{first_name:"josh", last_name:'doe' , email:'sometemp19@email.com' , age: 20 }])


