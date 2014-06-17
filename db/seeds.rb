# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

theaters = Theater.create(
  name:             'Murray Theater',
  url:              'www.murraytheater.com',
  telephone_number: '(801)456-7890',
  location:         '4500 S 300 E',
  business_hour:    'F-S 7 p.m. - 11 p.m.'
)

plays = Play.create(
  title:       'someplay',
  description: 'something',
  url:         'studiog.com',
  rate:        3,
  start_date:  Time.new,
  end_date:    Time.new + 3.weeks,
  time:        Time.new.hour,
  price:       20
)
