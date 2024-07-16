class PagesController < ApplicationController
  def home
  end

  def offer_home
    if current_user
      @homes = Home.where(user: current_user.id)
    end
  end
  
  def find_home
    @q = HomeSale.ransack(params[:q])
    @home_sales = @q.result(distinct: true)
  end


end
