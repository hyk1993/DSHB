class LovesController < ApplicationController
  def check
    @love1 = Loving.new
  end

  def create
    @love1 = Loving.new
  end
  
end
