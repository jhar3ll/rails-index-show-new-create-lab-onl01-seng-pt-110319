class CouponsController < ApplicationController
  
  def index 
    @coupons = Coupon.all 
  end 
  
  def show 
    @coupon = Coupon.find(params[:id])
  end 
  
  def create
    @coupon = Coupon.new 
    @coupon.coupon_code = params[:coupon_code]
    @coupon.coupon_store = params[:coupon_store]
    @coupon.save
  end 
end 