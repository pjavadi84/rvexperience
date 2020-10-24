class ReservationSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :start_date, :end_date, :pickup_location, :guest_quantity, :rental_duration, :price_per_night, :subtotal, :total, :tax, :coupon_code, :discount_price, :additional_notes
end
