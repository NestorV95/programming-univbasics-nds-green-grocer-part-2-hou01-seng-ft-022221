require_relative './part_1_solution.rb'
require "pry"

def apply_coupons(cart, coupons)
 count = 0 
 while count < coupons.length 
  cart_item = find_item_by_name_in_collection(coupons[count][:item], cart)
   coupon_item_name = "#{coupons[count][:item]} W/COUPON"
    cart_item_with_coupon = find_item_by_name_in_collection(coupon_item_name, cart)
     if cart_item && cart_item[:count] >= coupons[count][:num]
      if cart_item_with_coupon
        cart_item_with_coupon[:count] += coupons[count][:num]
        cart_item[:count] -= coupons[count][:num]
      else 
  count +=1 
 end 
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
