# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
# movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
# Character.create(name: "Luke", movie: movies.first)

Time.zone = "Asia/Tokyo"

Menu.create!(title: "VIO", duration: 60, price: 13000, description: "Sensitive area")
Menu.create!(title: "両腕", duration: 30, price: 10000, description: "Both arms")
Menu.create!(title: "両脚", duration: 90, price: 15000, description: "Both legs")

User.create!(
  first_name: "高井",
  last_name: "一真",
  password: "password",
  email: "test@test.com",
  phone: "080-5132-1024",
  gender: "男性",
  zip: "491-0827",
  state: "愛知県",
  city: "一宮市",
  address: "三ツ井7-11-2",
  note: "This is a note for Kaz",
  birthday: "1984-10-24",
  status: "System",
  line_id: "test_1",
  admin: true
)
User.create!(
  first_name: "epiR",
  last_name: "づー",
  password: "password",
  email: "azu@test.com",
  phone: "090-9339-0093",
  gender: "回答しない",
  zip: "157-0073",
  state: "東京都",
  city: "世田谷区",
  address: "砧7-5-37",
  note: "This is a note for Azu",
  birthday: "1981-10-07",
  status: "Admin",
  line_id: "",
  admin: true
)

today = Time.current.strftime("%F")
time = "10:00:00"
date_time = "#{today} #{time}"
start_time = Time.zone.parse(date_time)

91.times do
  # create slots for 10 hours each day
  20.times do
    BusinessTime.create!(
      time: start_time,
      available: true
    )
    start_time += 1800.seconds # 30 min
  end
  start_time += 50400 # 14 hours
end
