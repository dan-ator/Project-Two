# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, city: { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: city: cities.first)

## All these cities can be concatenated into a single Location.create call, like above
## Not a big deal, maybe consider using Faker gem to populate seed in a loop? It would
## look something like this:

## 100.times do
##    place = Faker::Place
##    Location.create(:country => place.country, :city => place.city)
## end

Location.create(country: "Algeria", city: "Algiers")
Location.create(country: "Angola", city: "Luanda")
Location.create(country: "Benin", city: "Cotonou")
Location.create(country: "Botswana", city: "Gaborone")
Location.create(country: "Burkina Faso", city: "Ouagadougou")
Location.create(country: "Burundi", city: "Bujumbura")
Location.create(country: "Cameroon", city: "Yaoundé")
Location.create(country: "Cape Verde", city: "Praia")
Location.create(country: "Central African Republic", city: "Bangui")
Location.create(country: "Chad", city: "N'Djamena")
Location.create(country: "Republic of the Congo", city: "Brazzaville")
Location.create(country: "Côte d'Ivoire", city: "Abidjan")
Location.create(country: "Democratic Republic of the Congo", city: "Kinshasa")
Location.create(country: "Djibouti", city: "Djibouti")
Location.create(country: "Egypt", city: "Cairo")
Location.create(country: "Egypt", city: "Alexandria")
Location.create(country: "Equatorial Guinea", city: "Malabo")
Location.create(country: "Eritrea", city: "Asmara")
Location.create(country: "Ethiopia", city: "Addis Ababa")
Location.create(country: "Gabon", city: "Libreville")
Location.create(country: "Gambia", city: "Banjul")
Location.create(country: "Ghana", city: "Accra")
Location.create(country: "Guinea", city: "Conakry")
Location.create(country: "Guinea", city: "Guinea-Bissau")
Location.create(country: "Guinea", city: "Bissau")
Location.create(country: "Kenya", city: "Nairobi")
Location.create(country: "Lesotho", city: "Maseru")
Location.create(country: "Liberia", city: "Monrovia")
Location.create(country: "Libya", city: "Tripoli")
Location.create(country: "Madagascar", city: "Antananarivo")
Location.create(country: "Malawi", city: "Lilongwe")
Location.create(country: "Mali", city: "Bamako")
Location.create(country: "Mauritania", city: "Nouakchott")
Location.create(country: "Mauritius", city: "Port Louis")
Location.create(country: "Morocco", city: "Rabat")
Location.create(country: "Morocco", city: "Casablanca")
Location.create(country: "Mozambique", city: "Maputo")
Location.create(country: "Namibia", city: "Windhoek")
Location.create(country: "Niger", city: "Niamey")
Location.create(country: "Nigeria", city: "Abuja")
Location.create(country: "Nigeria", city: "Lagos")
Location.create(country: "Rwanda", city: "Kigali")
Location.create(country: "Senegal", city: "Dakar")
Location.create(country: "Sierra Leone", city: "Freetown")
Location.create(country: "South Africa", city: "Pretoria")
Location.create(country: "South Africa", city: "Cape Town")
Location.create(country: "South Africa", city: "Durban")
Location.create(country: "South Africa", city: "Johannesburg")
Location.create(country: "South Sudan", city: "Juba")
Location.create(country: "Sudan", city: "Khartoum")
Location.create(country: "Swaziland", city: "Mbabane")
Location.create(country: "Tanzania", city: "Dar es Salaam")
Location.create(country: "Togo", city: "Lomé")
Location.create(country: "Tunisia", city: "Tunis")
Location.create(country: "Uganda", city: "Kampala")
Location.create(country: "Zambia", city: "Lusaka")
Location.create(country: "Zimbabwe", city: "Harare")
