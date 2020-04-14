# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
User.create!([{email:'maheshait@gmail.com',password:'sundaypsm',password_confirmation:'sundaypsm',admin:true,role:"Admin"}])
User.create!([{email:'saisiva@gmail.com',password:'sundaypsm',password_confirmation:'sundaypsm',admin:false,role:"security"}])
Aminite.create!([{name_of_aminite:'study room'}])
Aminite.create!([{name_of_aminite:'Basketball court'}])
Aminite.create!([{name_of_aminite:'badminton court'}])
Roomsofaminite.create!([{name_of_room:'sturoom1',aminite_id:1}])
Roomsofaminite.create!([{name_of_room:'sturoom2',aminite_id:1}])
Roomsofaminite.create!([{name_of_room:'sturoom3',aminite_id:1}])
Roomsofaminite.create!([{name_of_room:'basketcourt1',aminite_id:2}])
Roomsofaminite.create!([{name_of_room:'basketcourt2',aminite_id:2}])
Roomsofaminite.create!([{name_of_room:'basketcourt3',aminite_id:2}])
Roomsofaminite.create!([{name_of_room:'badmintoncourt1',aminite_id:3}])
Roomsofaminite.create!([{name_of_room:'badmintoncourt2',aminite_id:3}])
Roomsofaminite.create!([{name_of_room:'badmintoncourt3',aminite_id:3}])
# User.create!([{email:'saisiva@gmail.com',password:'sundaypsm',password_confirmation:'sundaypsm',admin:false,role:"security"}])
#   Character.create(name: 'Luke', movie: movies.first)
