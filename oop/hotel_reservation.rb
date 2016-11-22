# In this exercise, we've already implemented the class, and you have to write the 
# driver code. 
# This class represents a hotel reservation.

class HotelReservation
  attr_accessor :customer_name, :date, :room_number, :amenities

  def initialize(reservation_info)
    @customer_name = reservation_info[:customer_name]
    @date = reservation_info[:date]
    @room_number = reservation_info[:room_number]
    @amenities = []
  end

  def add_a_fridge
    @amenities << "fridge"
  end

  def add_a_crib
    @amenities << "crib"
  end

  def add_a_custom_amenity(amenity)
    @amenities << amenity
  end
end

first_reservation = HotelReservation.new(customer_name:["Brian"], date:["November 3rd"], room_number:["6"])
first_reservation.room_number = "5"
if first_reservation.room_number == "5"
  p "Pass!"
else
  p "Fail!"
end
first_reservation.add_a_fridge
if first_reservation.amenities == ["fridge"]
  p "Pass!"
else
  p "Fail!"
end
first_reservation.add_a_crib
if first_reservation.amenities == ["fridge", "crib"]
  p "Pass!"
else
  p "Fail!"
end
first_reservation.add_a_custom_amenity("Roll-away Bed")
if first_reservation.amenities == ["fridge", "crib", "Roll-away Bed"]
  p "Pass!"
else
  p "Fail!"
end
p first_reservation.amenities


# Write your own driver code below! Make sure your code tests the following:
# The ability to change a room number even after a reservation has already been created
# The add_a_fridge method
# The add_a_crib method
# The add_a_custom_amenity method