# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



Locality.delete_all
Locality.create([{:name => 'Begumpet', :latitude => 17.444707, :longitude => 78.466381},
                 {:name => 'Miyapur', :latitude => 17.509181, :longitude => 78.352109},
                 {:name => 'Dilsuknagar', :latitude => 17.368783, :longitude => 78.524671}])