# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
e1 = Equipment.create(:name => "CD")
e2 = Equipment.create(:name => "LPG")
e3 = Equipment.create(:name => "Kids Kit")
e4 = Equipment.create(:name => "GPS")
e5 = Equipment.create(:name => "Extra insurance")

i = 0
[["Adam", "West", 34.years.ago],["Peter", "Griffin", 42.years.ago],["Brian","Griffin",7.years.ago]].each do |f,s,a|
  eval "@client#{i + 1} = Client.create(:first_name => '#{f}', :second_name => '#{s}', :birth_date => '#{a.to_date}')"
  i += 1
end

car_type1 = CarType.create(:name => "VW Polo")
car_type2 = CarType.create(:name => "VW Passat")
car_type3 = CarType.create(:name => "Peugeot 407")

i = 1
%w( WPR-1234 WE-4567 WF-1029 WZ-4422 WGM-0082 SZ-4382 ).each do |r|
  j = (i % 3) + 1
  eval "@car#{i} = Car.create(:registration => '#{r}', :car_type => car_type#{j}, :daily_fee => #{j * 10})"
  i += 1
end
Car.find(1).equipment = [e1,e4]
Car.find(2).equipment = [e1,e3,e4,e5]
Car.find(3).equipment = [e1,e5]
Car.find(4).equipment = [e1,e3,e5]
Car.find(5).equipment = [e2,e5]
Car.find(6).equipment = [e1,e2,e3,e4,e5]

%w( 12 20 5 ).map(&:to_i).each {|amount| Coupon.create(:discount_amount => amount)}

Rental.create(:from => 5.days.ago, :to => 3.days.ago, :daily_fee => 30, :client => @client1, :car => @car1)
Rental.create(:from => 9.days.ago, :to => 5.days.ago, :daily_fee => 10, :client => @client2, :car => @car2)
Rental.create(:from => 18.days.ago, :to => 9.days.ago, :daily_fee => 21, :client => @client3, :car => @car1)
Rental.create(:from => 17.days.ago, :to => 14.days.ago, :daily_fee => 38, :client => @client1, :car => @car4)

[Rental,Coupon,Car,CarType,Client,Equipment].each {|m| p m.count }
