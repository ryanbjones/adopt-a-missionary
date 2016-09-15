# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
MISSIONARY
name
mission_id
birthday
country
state
mission term
photo?

MODERATOR
name
mission_id
email_address
username
password

MISSION
id
name
address
mission_president_name

SUGGESTED_GIFT
id
name
description
missionary_id

ADOPTOR
username
password
first_name
last_name
email_address
photo

ADOPTION
missionary_id
adoptor_id