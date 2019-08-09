class HomeController < ApplicationController
  def index
  end
  
  def index2
    @checks = Check.last
    @loves = Loving.where(gneder: @checks.first.to_i, ask: @checks.second.to_i, attitude: @checks.third.to_i)
    @counts = @loves.count-1
    @rand_int = rand(0..@counts)
    @love_content = @loves[@rand_int]
  end
  
end
